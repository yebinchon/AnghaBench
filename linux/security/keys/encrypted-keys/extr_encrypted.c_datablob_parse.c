
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;


 int EINVAL ;
 int MAX_OPT_ARGS ;
 int key_format_tokens ;
 int key_tokens ;
 int match_token (char*,int ,int *) ;
 int pr_err (char*) ;
 int pr_info (char*,...) ;
 char* strsep (char**,char*) ;
 scalar_t__ valid_master_desc (char*,int *) ;

__attribute__((used)) static int datablob_parse(char *datablob, const char **format,
     char **master_desc, char **decrypted_datalen,
     char **hex_encoded_iv)
{
 substring_t args[MAX_OPT_ARGS];
 int ret = -EINVAL;
 int key_cmd;
 int key_format;
 char *p, *keyword;

 keyword = strsep(&datablob, " \t");
 if (!keyword) {
  pr_info("encrypted_key: insufficient parameters specified\n");
  return ret;
 }
 key_cmd = match_token(keyword, key_tokens, args);


 p = strsep(&datablob, " \t");
 if (!p) {
  pr_err("encrypted_key: insufficient parameters specified\n");
  return ret;
 }

 key_format = match_token(p, key_format_tokens, args);
 switch (key_format) {
 case 134:
 case 133:
 case 135:
  *format = p;
  *master_desc = strsep(&datablob, " \t");
  break;
 case 131:
  *master_desc = p;
  break;
 }

 if (!*master_desc) {
  pr_info("encrypted_key: master key parameter is missing\n");
  goto out;
 }

 if (valid_master_desc(*master_desc, ((void*)0)) < 0) {
  pr_info("encrypted_key: master key parameter \'%s\' "
   "is invalid\n", *master_desc);
  goto out;
 }

 if (decrypted_datalen) {
  *decrypted_datalen = strsep(&datablob, " \t");
  if (!*decrypted_datalen) {
   pr_info("encrypted_key: keylen parameter is missing\n");
   goto out;
  }
 }

 switch (key_cmd) {
 case 129:
  if (!decrypted_datalen) {
   pr_info("encrypted_key: keyword \'%s\' not allowed "
    "when called from .update method\n", keyword);
   break;
  }
  ret = 0;
  break;
 case 130:
  if (!decrypted_datalen) {
   pr_info("encrypted_key: keyword \'%s\' not allowed "
    "when called from .update method\n", keyword);
   break;
  }
  *hex_encoded_iv = strsep(&datablob, " \t");
  if (!*hex_encoded_iv) {
   pr_info("encrypted_key: hex blob is missing\n");
   break;
  }
  ret = 0;
  break;
 case 128:
  if (decrypted_datalen) {
   pr_info("encrypted_key: keyword \'%s\' not allowed "
    "when called from .instantiate method\n",
    keyword);
   break;
  }
  ret = 0;
  break;
 case 132:
  pr_info("encrypted_key: keyword \'%s\' not recognized\n",
   keyword);
  break;
 }
out:
 return ret;
}
