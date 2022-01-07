
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fscache_state {int dummy; } ;
struct fscache_object {int lock; int dependents; int dep_link; TYPE_3__* cache; int flags; TYPE_1__* state; struct fscache_object* parent; int debug_id; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {scalar_t__ (* grab_object ) (struct fscache_object*,int ) ;} ;
struct TYPE_4__ {int name; } ;


 int ASSERT (int ) ;
 int DROP_OBJECT ;
 int FSCACHE_OBJECT_EV_NEW_CHILD ;
 int PARENT_READY ;
 int WAIT_FOR_PARENT ;
 int _debug (char*,...) ;
 int _enter (char*,int ,int) ;
 int _leave (char*) ;
 int fscache_n_cop_grab_object ;
 int fscache_obj_get_add_to_deps ;
 scalar_t__ fscache_object_is_available (struct fscache_object*) ;
 scalar_t__ fscache_object_is_dying (struct fscache_object*) ;
 scalar_t__ fscache_object_is_live (struct fscache_object*) ;
 int fscache_raise_event (struct fscache_object*,int ) ;
 int fscache_stat (int *) ;
 int fscache_stat_d (int *) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (struct fscache_object*,int ) ;
 struct fscache_state const* transit_to (int ) ;

__attribute__((used)) static const struct fscache_state *fscache_initialise_object(struct fscache_object *object,
            int event)
{
 struct fscache_object *parent;
 bool success;

 _enter("{OBJ%x},%d", object->debug_id, event);

 ASSERT(list_empty(&object->dep_link));

 parent = object->parent;
 if (!parent) {
  _leave(" [no parent]");
  return transit_to(DROP_OBJECT);
 }

 _debug("parent: %s of:%lx", parent->state->name, parent->flags);

 if (fscache_object_is_dying(parent)) {
  _leave(" [bad parent]");
  return transit_to(DROP_OBJECT);
 }

 if (fscache_object_is_available(parent)) {
  _leave(" [ready]");
  return transit_to(PARENT_READY);
 }

 _debug("wait");

 spin_lock(&parent->lock);
 fscache_stat(&fscache_n_cop_grab_object);
 success = 0;
 if (fscache_object_is_live(parent) &&
     object->cache->ops->grab_object(object, fscache_obj_get_add_to_deps)) {
  list_add(&object->dep_link, &parent->dependents);
  success = 1;
 }
 fscache_stat_d(&fscache_n_cop_grab_object);
 spin_unlock(&parent->lock);
 if (!success) {
  _leave(" [grab failed]");
  return transit_to(DROP_OBJECT);
 }



 fscache_raise_event(parent, FSCACHE_OBJECT_EV_NEW_CHILD);
 _leave(" [wait]");
 return transit_to(WAIT_FOR_PARENT);
}
