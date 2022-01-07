
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_crypto_key {int * tfm; int * key; } ;


 int crypto_free_sync_skcipher (int *) ;
 int kfree (int *) ;

void ceph_crypto_key_destroy(struct ceph_crypto_key *key)
{
 if (key) {
  kfree(key->key);
  key->key = ((void*)0);
  if (key->tfm) {
   crypto_free_sync_skcipher(key->tfm);
   key->tfm = ((void*)0);
  }
 }
}
