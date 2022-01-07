
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_hobject_id {size_t key_len; size_t oid_len; void* oid; void* key; } ;



__attribute__((used)) static void hoid_get_effective_key(const struct ceph_hobject_id *hoid,
       void **pkey, size_t *pkey_len)
{
 if (hoid->key_len) {
  *pkey = hoid->key;
  *pkey_len = hoid->key_len;
 } else {
  *pkey = hoid->oid;
  *pkey_len = hoid->oid_len;
 }
}
