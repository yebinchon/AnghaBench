
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char const*,size_t) ;
 char* module_blacklist ;
 size_t strcspn (char const*,char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static bool blacklisted(const char *module_name)
{
 const char *p;
 size_t len;

 if (!module_blacklist)
  return 0;

 for (p = module_blacklist; *p; p += len) {
  len = strcspn(p, ",");
  if (strlen(module_name) == len && !memcmp(module_name, p, len))
   return 1;
  if (p[len] == ',')
   len++;
 }
 return 0;
}
