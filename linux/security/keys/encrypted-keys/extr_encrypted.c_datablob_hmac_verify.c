
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct encrypted_key_payload {unsigned short datablob_len; char* master_desc; char* format; } ;
typedef int digest ;
typedef int derived_key ;


 int AUTH_KEY ;
 int EINVAL ;
 int HASH_SIZE ;
 int calc_hmac (char*,char*,int,char*,unsigned short) ;
 int crypto_memneq (char*,char*,int) ;
 int dump_hmac (char*,char*,int) ;
 int get_derived_key (char*,int ,char const*,size_t) ;
 int memzero_explicit (char*,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int datablob_hmac_verify(struct encrypted_key_payload *epayload,
    const u8 *format, const u8 *master_key,
    size_t master_keylen)
{
 u8 derived_key[HASH_SIZE];
 u8 digest[HASH_SIZE];
 int ret;
 char *p;
 unsigned short len;

 ret = get_derived_key(derived_key, AUTH_KEY, master_key, master_keylen);
 if (ret < 0)
  goto out;

 len = epayload->datablob_len;
 if (!format) {
  p = epayload->master_desc;
  len -= strlen(epayload->format) + 1;
 } else
  p = epayload->format;

 ret = calc_hmac(digest, derived_key, sizeof derived_key, p, len);
 if (ret < 0)
  goto out;
 ret = crypto_memneq(digest, epayload->format + epayload->datablob_len,
       sizeof(digest));
 if (ret) {
  ret = -EINVAL;
  dump_hmac("datablob",
     epayload->format + epayload->datablob_len,
     HASH_SIZE);
  dump_hmac("calc", digest, HASH_SIZE);
 }
out:
 memzero_explicit(derived_key, sizeof(derived_key));
 return ret;
}
