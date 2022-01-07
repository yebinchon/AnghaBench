
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_crypto_key {int type; int len; int * key; int * tfm; } ;




 int EINVAL ;
 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_NOIO ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int ceph_crypto_key_destroy (struct ceph_crypto_key*) ;
 int * crypto_alloc_sync_skcipher (char*,int ,int ) ;
 int crypto_sync_skcipher_setkey (int *,int *,int ) ;
 int * kmemdup (void*,int ,int ) ;
 int memalloc_noio_restore (unsigned int) ;
 unsigned int memalloc_noio_save () ;

__attribute__((used)) static int set_secret(struct ceph_crypto_key *key, void *buf)
{
 unsigned int noio_flag;
 int ret;

 key->key = ((void*)0);
 key->tfm = ((void*)0);

 switch (key->type) {
 case 128:
  return 0;
 case 129:
  break;
 default:
  return -ENOTSUPP;
 }

 if (!key->len)
  return -EINVAL;

 key->key = kmemdup(buf, key->len, GFP_NOIO);
 if (!key->key) {
  ret = -ENOMEM;
  goto fail;
 }


 noio_flag = memalloc_noio_save();
 key->tfm = crypto_alloc_sync_skcipher("cbc(aes)", 0, 0);
 memalloc_noio_restore(noio_flag);
 if (IS_ERR(key->tfm)) {
  ret = PTR_ERR(key->tfm);
  key->tfm = ((void*)0);
  goto fail;
 }

 ret = crypto_sync_skcipher_setkey(key->tfm, key->key, key->len);
 if (ret)
  goto fail;

 return 0;

fail:
 ceph_crypto_key_destroy(key);
 return ret;
}
