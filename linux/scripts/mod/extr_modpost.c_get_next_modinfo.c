
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_info {char* modinfo; unsigned long modinfo_len; } ;


 char* next_string (char*,unsigned long*) ;
 unsigned int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,unsigned int) ;

__attribute__((used)) static char *get_next_modinfo(struct elf_info *info, const char *tag,
         char *prev)
{
 char *p;
 unsigned int taglen = strlen(tag);
 char *modinfo = info->modinfo;
 unsigned long size = info->modinfo_len;

 if (prev) {
  size -= prev - modinfo;
  modinfo = next_string(prev, &size);
 }

 for (p = modinfo; p; p = next_string(p, &size)) {
  if (strncmp(p, tag, taglen) == 0 && p[taglen] == '=')
   return p + taglen + 1;
 }
 return ((void*)0);
}
