
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_object_id {scalar_t__ name; scalar_t__ inline_name; } ;


 int kfree (scalar_t__) ;

void ceph_oid_destroy(struct ceph_object_id *oid)
{
 if (oid->name != oid->inline_name)
  kfree(oid->name);
}
