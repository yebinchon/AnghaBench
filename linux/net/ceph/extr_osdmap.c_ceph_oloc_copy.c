
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_object_locator {int * pool_ns; int pool; } ;


 int * ceph_get_string (int *) ;
 int ceph_oloc_destroy (struct ceph_object_locator*) ;

void ceph_oloc_copy(struct ceph_object_locator *dest,
      const struct ceph_object_locator *src)
{
 ceph_oloc_destroy(dest);

 dest->pool = src->pool;
 if (src->pool_ns)
  dest->pool_ns = ceph_get_string(src->pool_ns);
 else
  dest->pool_ns = ((void*)0);
}
