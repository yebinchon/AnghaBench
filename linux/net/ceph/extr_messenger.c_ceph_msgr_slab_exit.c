
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int * ceph_msg_cache ;
 int kmem_cache_destroy (int *) ;

__attribute__((used)) static void ceph_msgr_slab_exit(void)
{
 BUG_ON(!ceph_msg_cache);
 kmem_cache_destroy(ceph_msg_cache);
 ceph_msg_cache = ((void*)0);
}
