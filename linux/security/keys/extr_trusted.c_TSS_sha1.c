
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdesc {int shash; } ;


 scalar_t__ IS_ERR (struct sdesc*) ;
 int PTR_ERR (struct sdesc*) ;
 int crypto_shash_digest (int *,unsigned char const*,unsigned int,unsigned char*) ;
 int hash_alg ;
 int hashalg ;
 struct sdesc* init_sdesc (int ) ;
 int kzfree (struct sdesc*) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int TSS_sha1(const unsigned char *data, unsigned int datalen,
      unsigned char *digest)
{
 struct sdesc *sdesc;
 int ret;

 sdesc = init_sdesc(hashalg);
 if (IS_ERR(sdesc)) {
  pr_info("trusted_key: can't alloc %s\n", hash_alg);
  return PTR_ERR(sdesc);
 }

 ret = crypto_shash_digest(&sdesc->shash, data, datalen, digest);
 kzfree(sdesc);
 return ret;
}
