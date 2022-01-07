
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ULONG_MAX ;
 int __purge_vmap_area_lazy (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int purge_fragmented_blocks_allcpus () ;
 int vmap_purge_lock ;

__attribute__((used)) static void purge_vmap_area_lazy(void)
{
 mutex_lock(&vmap_purge_lock);
 purge_fragmented_blocks_allcpus();
 __purge_vmap_area_lazy(ULONG_MAX, 0);
 mutex_unlock(&vmap_purge_lock);
}
