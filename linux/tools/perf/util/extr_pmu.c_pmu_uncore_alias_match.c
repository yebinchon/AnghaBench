
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* strdup (char const*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;
 char* strstr (char const*,char*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static bool pmu_uncore_alias_match(const char *pmu_name, const char *name)
{
 char *tmp = ((void*)0), *tok, *str;
 bool res;

 str = strdup(pmu_name);
 if (!str)
  return 0;




 tok = strtok_r(str, ",", &tmp);
 if (strncmp(pmu_name, tok, strlen(tok))) {
  res = 0;
  goto out;
 }
 for (; tok; name += strlen(tok), tok = strtok_r(((void*)0), ",", &tmp)) {
  name = strstr(name, tok);
  if (!name) {
   res = 0;
   goto out;
  }
 }

 res = 1;
out:
 free(str);
 return res;
}
