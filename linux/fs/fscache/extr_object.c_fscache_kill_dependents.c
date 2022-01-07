
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_state {int dummy; } ;
struct fscache_object {int debug_id; } ;


 int FSCACHE_OBJECT_EV_KILL ;
 struct fscache_state const* NO_TRANSIT ;
 int WAIT_FOR_CLEARANCE ;
 int _enter (char*,int ,int) ;
 int fscache_enqueue_dependents (struct fscache_object*,int ) ;
 struct fscache_state const* transit_to (int ) ;

__attribute__((used)) static const struct fscache_state *fscache_kill_dependents(struct fscache_object *object,
          int event)
{
 _enter("{OBJ%x},%d", object->debug_id, event);

 if (!fscache_enqueue_dependents(object, FSCACHE_OBJECT_EV_KILL))
  return NO_TRANSIT;
 return transit_to(WAIT_FOR_CLEARANCE);
}
