
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct trusted_key_payload {long key_len; int blob_len; int blob; } ;
struct trusted_key_options {int dummy; } ;


 int EINVAL ;
 int MAX_BLOB_SIZE ;
 long MAX_KEY_SIZE ;
 int MAX_OPT_ARGS ;
 long MIN_KEY_SIZE ;




 int getoptions (char*,struct trusted_key_payload*,struct trusted_key_options*) ;
 int hex2bin (int ,char*,int) ;
 int key_tokens ;
 int kstrtol (char*,int,long*) ;
 int match_token (char*,int ,int *) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int datablob_parse(char *datablob, struct trusted_key_payload *p,
     struct trusted_key_options *o)
{
 substring_t args[MAX_OPT_ARGS];
 long keylen;
 int ret = -EINVAL;
 int key_cmd;
 char *c;


 c = strsep(&datablob, " \t");
 if (!c)
  return -EINVAL;
 key_cmd = match_token(c, key_tokens, args);
 switch (key_cmd) {
 case 129:

  c = strsep(&datablob, " \t");
  if (!c)
   return -EINVAL;
  ret = kstrtol(c, 10, &keylen);
  if (ret < 0 || keylen < MIN_KEY_SIZE || keylen > MAX_KEY_SIZE)
   return -EINVAL;
  p->key_len = keylen;
  ret = getoptions(datablob, p, o);
  if (ret < 0)
   return ret;
  ret = 129;
  break;
 case 130:

  c = strsep(&datablob, " \t");
  if (!c)
   return -EINVAL;
  p->blob_len = strlen(c) / 2;
  if (p->blob_len > MAX_BLOB_SIZE)
   return -EINVAL;
  ret = hex2bin(p->blob, c, p->blob_len);
  if (ret < 0)
   return -EINVAL;
  ret = getoptions(datablob, p, o);
  if (ret < 0)
   return ret;
  ret = 130;
  break;
 case 128:

  ret = getoptions(datablob, p, o);
  if (ret < 0)
   return ret;
  ret = 128;
  break;
 case 131:
  return -EINVAL;
  break;
 }
 return ret;
}
