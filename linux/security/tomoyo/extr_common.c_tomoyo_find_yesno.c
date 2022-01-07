
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s8 ;


 int strlen (char const*) ;
 int strncmp (char const*,char*,int) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static s8 tomoyo_find_yesno(const char *string, const char *find)
{
 const char *cp = strstr(string, find);

 if (cp) {
  cp += strlen(find);
  if (!strncmp(cp, "=yes", 4))
   return 1;
  else if (!strncmp(cp, "=no", 3))
   return 0;
 }
 return -1;
}
