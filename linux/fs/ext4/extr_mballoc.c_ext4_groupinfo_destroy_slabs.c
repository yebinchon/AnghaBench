
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_GRPINFO_CACHES ;
 int ** ext4_groupinfo_caches ;
 int kmem_cache_destroy (int *) ;

__attribute__((used)) static void ext4_groupinfo_destroy_slabs(void)
{
 int i;

 for (i = 0; i < NR_GRPINFO_CACHES; i++) {
  kmem_cache_destroy(ext4_groupinfo_caches[i]);
  ext4_groupinfo_caches[i] = ((void*)0);
 }
}
