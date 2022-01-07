
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int ENOMEM ;
 int KMEM_CACHE (int ,int ) ;
 int ceph_msg ;
 int ceph_msg_cache ;

__attribute__((used)) static int ceph_msgr_slab_init(void)
{
 BUG_ON(ceph_msg_cache);
 ceph_msg_cache = KMEM_CACHE(ceph_msg, 0);
 if (!ceph_msg_cache)
  return -ENOMEM;

 return 0;
}
