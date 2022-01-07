
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ceph_crypto_key {int len; int created; void* type; } ;


 int EINVAL ;
 int bad ;
 void* ceph_decode_16 (void**) ;
 int ceph_decode_copy (void**,int *,int) ;
 int ceph_decode_need (void**,void*,int,int ) ;
 int dout (char*) ;
 int set_secret (struct ceph_crypto_key*,void*) ;

int ceph_crypto_key_decode(struct ceph_crypto_key *key, void **p, void *end)
{
 int ret;

 ceph_decode_need(p, end, 2*sizeof(u16) + sizeof(key->created), bad);
 key->type = ceph_decode_16(p);
 ceph_decode_copy(p, &key->created, sizeof(key->created));
 key->len = ceph_decode_16(p);
 ceph_decode_need(p, end, key->len, bad);
 ret = set_secret(key, *p);
 *p += key->len;
 return ret;

bad:
 dout("failed to decode crypto key\n");
 return -EINVAL;
}
