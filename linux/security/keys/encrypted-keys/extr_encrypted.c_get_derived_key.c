
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef enum derived_key_type { ____Placeholder_derived_key_type } derived_key_type ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int HASH_SIZE ;
 int calc_hash (int ,char*,char*,unsigned int) ;
 int hash_tfm ;
 char* kzalloc (unsigned int,int ) ;
 int kzfree (char*) ;
 int memcpy (char*,char const*,size_t) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int get_derived_key(u8 *derived_key, enum derived_key_type key_type,
      const u8 *master_key, size_t master_keylen)
{
 u8 *derived_buf;
 unsigned int derived_buf_len;
 int ret;

 derived_buf_len = strlen("AUTH_KEY") + 1 + master_keylen;
 if (derived_buf_len < HASH_SIZE)
  derived_buf_len = HASH_SIZE;

 derived_buf = kzalloc(derived_buf_len, GFP_KERNEL);
 if (!derived_buf)
  return -ENOMEM;

 if (key_type)
  strcpy(derived_buf, "AUTH_KEY");
 else
  strcpy(derived_buf, "ENC_KEY");

 memcpy(derived_buf + strlen(derived_buf) + 1, master_key,
        master_keylen);
 ret = calc_hash(hash_tfm, derived_key, derived_buf, derived_buf_len);
 kzfree(derived_buf);
 return ret;
}
