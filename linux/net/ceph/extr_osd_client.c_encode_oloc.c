
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_object_locator {TYPE_1__* pool_ns; int pool; } ;
struct TYPE_2__ {int len; int str; } ;


 int ceph_encode_32 (void**,int) ;
 int ceph_encode_64 (void**,int ) ;
 int ceph_encode_string (void**,void*,int ,int ) ;
 int ceph_oloc_encoding_size (struct ceph_object_locator const*) ;
 int ceph_start_encoding (void**,int,int,int ) ;

__attribute__((used)) static void encode_oloc(void **p, void *end,
   const struct ceph_object_locator *oloc)
{
 ceph_start_encoding(p, 5, 4, ceph_oloc_encoding_size(oloc));
 ceph_encode_64(p, oloc->pool);
 ceph_encode_32(p, -1);
 ceph_encode_32(p, 0);
 if (oloc->pool_ns)
  ceph_encode_string(p, end, oloc->pool_ns->str,
       oloc->pool_ns->len);
 else
  ceph_encode_32(p, 0);
}
