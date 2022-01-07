
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_object_locator {TYPE_1__* pool_ns; } ;
struct TYPE_2__ {int len; } ;



__attribute__((used)) static int ceph_oloc_encoding_size(const struct ceph_object_locator *oloc)
{
 return 8 + 4 + 4 + 4 + (oloc->pool_ns ? oloc->pool_ns->len : 0);
}
