
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fscache_object {TYPE_1__* parent; int dep_link; int debug_id; } ;
struct TYPE_2__ {int lock; } ;


 int _enter (char*,int ) ;
 int _leave (char*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void fscache_dequeue_object(struct fscache_object *object)
{
 _enter("{OBJ%x}", object->debug_id);

 if (!list_empty(&object->dep_link)) {
  spin_lock(&object->parent->lock);
  list_del_init(&object->dep_link);
  spin_unlock(&object->parent->lock);
 }

 _leave("");
}
