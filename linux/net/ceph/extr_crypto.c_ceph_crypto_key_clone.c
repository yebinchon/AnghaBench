
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_crypto_key {int key; } ;


 int memcpy (struct ceph_crypto_key*,struct ceph_crypto_key const*,int) ;
 int set_secret (struct ceph_crypto_key*,int ) ;

int ceph_crypto_key_clone(struct ceph_crypto_key *dst,
     const struct ceph_crypto_key *src)
{
 memcpy(dst, src, sizeof(struct ceph_crypto_key));
 return set_secret(dst, src->key);
}
