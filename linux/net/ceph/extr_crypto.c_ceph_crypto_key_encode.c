
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ceph_crypto_key {int len; int type; int * key; int created; } ;


 int ERANGE ;
 int ceph_encode_16 (void**,int) ;
 int ceph_encode_copy (void**,int *,int) ;

int ceph_crypto_key_encode(struct ceph_crypto_key *key, void **p, void *end)
{
 if (*p + sizeof(u16) + sizeof(key->created) +
     sizeof(u16) + key->len > end)
  return -ERANGE;
 ceph_encode_16(p, key->type);
 ceph_encode_copy(p, &key->created, sizeof(key->created));
 ceph_encode_16(p, key->len);
 ceph_encode_copy(p, key->key, key->len);
 return 0;
}
