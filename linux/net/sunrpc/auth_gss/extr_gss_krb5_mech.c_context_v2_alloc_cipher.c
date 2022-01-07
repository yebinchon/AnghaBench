
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct krb5_ctx {TYPE_1__* gk5e; } ;
struct crypto_sync_skcipher {int dummy; } ;
struct TYPE_2__ {int keylength; } ;


 scalar_t__ IS_ERR (struct crypto_sync_skcipher*) ;
 struct crypto_sync_skcipher* crypto_alloc_sync_skcipher (char const*,int ,int ) ;
 int crypto_free_sync_skcipher (struct crypto_sync_skcipher*) ;
 scalar_t__ crypto_sync_skcipher_setkey (struct crypto_sync_skcipher*,int *,int ) ;
 int dprintk (char*,char const*) ;

__attribute__((used)) static struct crypto_sync_skcipher *
context_v2_alloc_cipher(struct krb5_ctx *ctx, const char *cname, u8 *key)
{
 struct crypto_sync_skcipher *cp;

 cp = crypto_alloc_sync_skcipher(cname, 0, 0);
 if (IS_ERR(cp)) {
  dprintk("gss_kerberos_mech: unable to initialize "
   "crypto algorithm %s\n", cname);
  return ((void*)0);
 }
 if (crypto_sync_skcipher_setkey(cp, key, ctx->gk5e->keylength)) {
  dprintk("gss_kerberos_mech: error setting key for "
   "crypto algorithm %s\n", cname);
  crypto_free_sync_skcipher(cp);
  return ((void*)0);
 }
 return cp;
}
