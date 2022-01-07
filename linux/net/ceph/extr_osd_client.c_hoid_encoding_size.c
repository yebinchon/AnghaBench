
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_hobject_id {int key_len; int oid_len; int nspace_len; } ;



__attribute__((used)) static int hoid_encoding_size(const struct ceph_hobject_id *hoid)
{
 return 8 + 4 + 1 + 8 +
        4 + hoid->key_len + 4 + hoid->oid_len + 4 + hoid->nspace_len;
}
