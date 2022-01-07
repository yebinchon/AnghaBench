
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct encrypted_key_payload {int datablob_len; int * format; } ;
typedef int derived_key ;


 int AUTH_KEY ;
 int HASH_SIZE ;
 int calc_hmac (int *,int *,int,int *,int) ;
 int dump_hmac (int *,int *,int) ;
 int get_derived_key (int *,int ,int const*,size_t) ;
 int memzero_explicit (int *,int) ;

__attribute__((used)) static int datablob_hmac_append(struct encrypted_key_payload *epayload,
    const u8 *master_key, size_t master_keylen)
{
 u8 derived_key[HASH_SIZE];
 u8 *digest;
 int ret;

 ret = get_derived_key(derived_key, AUTH_KEY, master_key, master_keylen);
 if (ret < 0)
  goto out;

 digest = epayload->format + epayload->datablob_len;
 ret = calc_hmac(digest, derived_key, sizeof derived_key,
   epayload->format, epayload->datablob_len);
 if (!ret)
  dump_hmac(((void*)0), digest, HASH_SIZE);
out:
 memzero_explicit(derived_key, sizeof(derived_key));
 return ret;
}
