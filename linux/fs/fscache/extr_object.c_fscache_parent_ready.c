
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_state {int dummy; } ;
struct fscache_object {int lock; int lookup_jif; int n_obj_ops; int n_ops; int debug_id; struct fscache_object* parent; } ;


 int ASSERT (int ) ;
 int LOOK_UP_OBJECT ;
 int _enter (char*,int ,int) ;
 int _leave (char*) ;
 int jiffies ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct fscache_state const* transit_to (int ) ;

__attribute__((used)) static const struct fscache_state *fscache_parent_ready(struct fscache_object *object,
       int event)
{
 struct fscache_object *parent = object->parent;

 _enter("{OBJ%x},%d", object->debug_id, event);

 ASSERT(parent != ((void*)0));

 spin_lock(&parent->lock);
 parent->n_ops++;
 parent->n_obj_ops++;
 object->lookup_jif = jiffies;
 spin_unlock(&parent->lock);

 _leave("");
 return transit_to(LOOK_UP_OBJECT);
}
