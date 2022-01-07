
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t rm_eo; size_t rm_so; } ;
typedef TYPE_1__ regmatch_t ;
typedef int regex_t ;


 int REG_EXTENDED ;
 int is_full_cpuid (char const*) ;
 int pr_info (char*,char const*) ;
 scalar_t__ regcomp (int *,char const*,int ) ;
 int regexec (int *,char const*,int,TYPE_1__*,int ) ;
 int regfree (int *) ;
 size_t strlen (char const*) ;
 char const* strrchr (char const*,char) ;

int strcmp_cpuid_str(const char *mapcpuid, const char *id)
{
 regex_t re;
 regmatch_t pmatch[1];
 int match;
 bool full_mapcpuid = is_full_cpuid(mapcpuid);
 bool full_cpuid = is_full_cpuid(id);





 if (full_mapcpuid && !full_cpuid) {
  pr_info("Invalid CPUID %s. Full CPUID is required, "
   "vendor-family-model-stepping\n", id);
  return 1;
 }

 if (regcomp(&re, mapcpuid, REG_EXTENDED) != 0) {

  pr_info("Invalid regular expression %s\n", mapcpuid);
  return 1;
 }

 match = !regexec(&re, id, 1, pmatch, 0);
 regfree(&re);
 if (match) {
  size_t match_len = (pmatch[0].rm_eo - pmatch[0].rm_so);
  size_t cpuid_len;




  if (!full_mapcpuid && full_cpuid)
   cpuid_len = strrchr(id, '-') - id;
  else
   cpuid_len = strlen(id);


  if (match_len == cpuid_len)
   return 0;
 }

 return 1;
}
