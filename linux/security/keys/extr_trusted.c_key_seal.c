
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trusted_key_payload {size_t key_len; int blob_len; int blob; int * key; int migratable; } ;
struct trusted_key_options {int pcrinfo_len; int pcrinfo; int blobauth; int keyauth; int keyhandle; int keytype; } ;
struct tpm_buf {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct tpm_buf* kzalloc (int,int ) ;
 int kzfree (struct tpm_buf*) ;
 int pr_info (char*,int) ;
 int tpm_seal (struct tpm_buf*,int ,int ,int ,int *,size_t,int ,int *,int ,int ,int ) ;

__attribute__((used)) static int key_seal(struct trusted_key_payload *p,
      struct trusted_key_options *o)
{
 struct tpm_buf *tb;
 int ret;

 tb = kzalloc(sizeof *tb, GFP_KERNEL);
 if (!tb)
  return -ENOMEM;


 p->key[p->key_len] = p->migratable;

 ret = tpm_seal(tb, o->keytype, o->keyhandle, o->keyauth,
         p->key, p->key_len + 1, p->blob, &p->blob_len,
         o->blobauth, o->pcrinfo, o->pcrinfo_len);
 if (ret < 0)
  pr_info("trusted_key: srkseal failed (%d)\n", ret);

 kzfree(tb);
 return ret;
}
