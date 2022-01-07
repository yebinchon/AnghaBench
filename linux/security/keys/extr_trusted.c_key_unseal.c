
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trusted_key_payload {size_t key_len; int * key; int migratable; int blob_len; int blob; } ;
struct trusted_key_options {int blobauth; int keyauth; int keyhandle; } ;
struct tpm_buf {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct tpm_buf* kzalloc (int,int ) ;
 int kzfree (struct tpm_buf*) ;
 int pr_info (char*,int) ;
 int tpm_unseal (struct tpm_buf*,int ,int ,int ,int ,int ,int *,size_t*) ;

__attribute__((used)) static int key_unseal(struct trusted_key_payload *p,
        struct trusted_key_options *o)
{
 struct tpm_buf *tb;
 int ret;

 tb = kzalloc(sizeof *tb, GFP_KERNEL);
 if (!tb)
  return -ENOMEM;

 ret = tpm_unseal(tb, o->keyhandle, o->keyauth, p->blob, p->blob_len,
    o->blobauth, p->key, &p->key_len);
 if (ret < 0)
  pr_info("trusted_key: srkunseal failed (%d)\n", ret);
 else

  p->migratable = p->key[--p->key_len];

 kzfree(tb);
 return ret;
}
