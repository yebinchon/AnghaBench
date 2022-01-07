
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_object {int lock; int flags; } ;


 int FSCACHE_OBJECT_IS_LIVE ;
 int clear_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void fscache_mark_object_dead(struct fscache_object *object)
{
 spin_lock(&object->lock);
 clear_bit(FSCACHE_OBJECT_IS_LIVE, &object->flags);
 spin_unlock(&object->lock);
}
