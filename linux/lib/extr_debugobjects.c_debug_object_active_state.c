
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_obj_descr {int dummy; } ;
struct debug_obj {int state; unsigned int astate; void* object; struct debug_obj_descr* descr; } ;
struct debug_bucket {int lock; } ;



 int ODEBUG_STATE_NOTAVAILABLE ;
 int debug_objects_enabled ;
 int debug_print_object (struct debug_obj*,char*) ;
 struct debug_bucket* get_bucket (unsigned long) ;
 struct debug_obj* lookup_object (void*,struct debug_bucket*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void
debug_object_active_state(void *addr, struct debug_obj_descr *descr,
     unsigned int expect, unsigned int next)
{
 struct debug_bucket *db;
 struct debug_obj *obj;
 unsigned long flags;
 bool print_object = 0;

 if (!debug_objects_enabled)
  return;

 db = get_bucket((unsigned long) addr);

 raw_spin_lock_irqsave(&db->lock, flags);

 obj = lookup_object(addr, db);
 if (obj) {
  switch (obj->state) {
  case 128:
   if (obj->astate == expect)
    obj->astate = next;
   else
    print_object = 1;
   break;

  default:
   print_object = 1;
   break;
  }
 }

 raw_spin_unlock_irqrestore(&db->lock, flags);
 if (!obj) {
  struct debug_obj o = { .object = addr,
           .state = ODEBUG_STATE_NOTAVAILABLE,
           .descr = descr };

  debug_print_object(&o, "active_state");
 } else if (print_object) {
  debug_print_object(obj, "active_state");
 }
}
