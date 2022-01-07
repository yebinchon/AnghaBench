
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_transition {int events; struct fscache_state const* transit_to; } ;
typedef struct fscache_state {struct fscache_transition* transitions; struct fscache_state const* (* work ) (struct fscache_object*,int) ;int name; } const fscache_state ;
struct fscache_object {unsigned long events; unsigned long event_mask; unsigned long oob_event_mask; struct fscache_state const* state; int debug_id; struct fscache_transition* oob_table; } ;


 int ASSERT (int ) ;
 int BUG () ;
 struct fscache_state const* NO_TRANSIT ;
 int OBJECT_DEAD ;
 struct fscache_state const* STATE (int ) ;
 int __clear_bit (int,unsigned long*) ;
 int _debug (char*,int ,unsigned long,...) ;
 int _enter (char*,int ,int ,unsigned long) ;
 int _leave (char*,...) ;
 int clear_bit (int,unsigned long*) ;
 int fls (unsigned long) ;
 int fscache_enqueue_object (struct fscache_object*) ;
 int smp_mb () ;
 struct fscache_state const* stub1 (struct fscache_object*,int) ;
 int trace_fscache_osm (struct fscache_object*,struct fscache_state const*,int,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void fscache_object_sm_dispatcher(struct fscache_object *object)
{
 const struct fscache_transition *t;
 const struct fscache_state *state, *new_state;
 unsigned long events, event_mask;
 bool oob;
 int event = -1;

 ASSERT(object != ((void*)0));

 _enter("{OBJ%x,%s,%lx}",
        object->debug_id, object->state->name, object->events);

 event_mask = object->event_mask;
restart:
 object->event_mask = 0;
 state = object->state;
restart_masked:
 events = object->events;


 if (events & object->oob_event_mask) {
  _debug("{OBJ%x} oob %lx",
         object->debug_id, events & object->oob_event_mask);
  oob = 1;
  for (t = object->oob_table; t->events; t++) {
   if (events & t->events) {
    state = t->transit_to;
    ASSERT(state->work != ((void*)0));
    event = fls(events & t->events) - 1;
    __clear_bit(event, &object->oob_event_mask);
    clear_bit(event, &object->events);
    goto execute_work_state;
   }
  }
 }
 oob = 0;


 if (!state->work) {
  if (events & event_mask) {
   for (t = state->transitions; t->events; t++) {
    if (events & t->events) {
     new_state = t->transit_to;
     event = fls(events & t->events) - 1;
     trace_fscache_osm(object, state,
         1, 0, event);
     clear_bit(event, &object->events);
     _debug("{OBJ%x} ev %d: %s -> %s",
            object->debug_id, event,
            state->name, new_state->name);
     object->state = state = new_state;
     goto execute_work_state;
    }
   }


   BUG();
  }

  goto unmask_events;
 }

execute_work_state:
 _debug("{OBJ%x} exec %s", object->debug_id, state->name);

 trace_fscache_osm(object, state, 0, oob, event);
 new_state = state->work(object, event);
 event = -1;
 if (new_state == NO_TRANSIT) {
  _debug("{OBJ%x} %s notrans", object->debug_id, state->name);
  if (unlikely(state == STATE(OBJECT_DEAD))) {
   _leave(" [dead]");
   return;
  }
  fscache_enqueue_object(object);
  event_mask = object->oob_event_mask;
  goto unmask_events;
 }

 _debug("{OBJ%x} %s -> %s",
        object->debug_id, state->name, new_state->name);
 object->state = state = new_state;

 if (state->work) {
  if (unlikely(state == STATE(OBJECT_DEAD))) {
   _leave(" [dead]");
   return;
  }
  goto restart_masked;
 }


 event_mask = object->oob_event_mask;
 for (t = state->transitions; t->events; t++)
  event_mask |= t->events;

unmask_events:
 object->event_mask = event_mask;
 smp_mb();
 events = object->events;
 if (events & event_mask)
  goto restart;
 _leave(" [msk %lx]", event_mask);
}
