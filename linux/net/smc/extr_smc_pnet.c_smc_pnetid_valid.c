
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SMC_MAX_PNETID_LEN ;
 int isalnum (char) ;
 scalar_t__ islower (char) ;
 scalar_t__ isspace (char) ;
 char* skip_spaces (char const*) ;
 size_t strlen (char*) ;
 char toupper (char) ;

__attribute__((used)) static bool smc_pnetid_valid(const char *pnet_name, char *pnetid)
{
 char *bf = skip_spaces(pnet_name);
 size_t len = strlen(bf);
 char *end = bf + len;

 if (!len)
  return 0;
 while (--end >= bf && isspace(*end))
  ;
 if (end - bf >= SMC_MAX_PNETID_LEN)
  return 0;
 while (bf <= end) {
  if (!isalnum(*bf))
   return 0;
  *pnetid++ = islower(*bf) ? toupper(*bf) : *bf;
  bf++;
 }
 *pnetid = '\0';
 return 1;
}
