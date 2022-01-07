
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_hobject_id {struct ceph_hobject_id* nspace; struct ceph_hobject_id* oid; struct ceph_hobject_id* key; } ;


 int kfree (struct ceph_hobject_id*) ;

__attribute__((used)) static void free_hoid(struct ceph_hobject_id *hoid)
{
 if (hoid) {
  kfree(hoid->key);
  kfree(hoid->oid);
  kfree(hoid->nspace);
  kfree(hoid);
 }
}
