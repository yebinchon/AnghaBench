
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ULONG_MAX ;
 int __purge_vmap_area_lazy (int ,int ) ;
 scalar_t__ mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int vmap_purge_lock ;

__attribute__((used)) static void try_purge_vmap_area_lazy(void)
{
 if (mutex_trylock(&vmap_purge_lock)) {
  __purge_vmap_area_lazy(ULONG_MAX, 0);
  mutex_unlock(&vmap_purge_lock);
 }
}
