
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_object {scalar_t__ n_ops; int lock; int n_obj_ops; int debug_id; struct fscache_object* parent; } ;


 int FSCACHE_OBJECT_EV_CLEARED ;
 int _enter (char*,int ,int ,scalar_t__) ;
 int fscache_raise_event (struct fscache_object*,int ) ;
 int spin_lock_nested (int *,int) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void fscache_done_parent_op(struct fscache_object *object)
{
 struct fscache_object *parent = object->parent;

 _enter("OBJ%x {OBJ%x,%x}",
        object->debug_id, parent->debug_id, parent->n_ops);

 spin_lock_nested(&parent->lock, 1);
 parent->n_obj_ops--;
 parent->n_ops--;
 if (parent->n_ops == 0)
  fscache_raise_event(parent, FSCACHE_OBJECT_EV_CLEARED);
 spin_unlock(&parent->lock);
}
