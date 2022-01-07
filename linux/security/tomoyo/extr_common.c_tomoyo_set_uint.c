
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char const*,char*,unsigned int*) ;
 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static void tomoyo_set_uint(unsigned int *i, const char *string,
       const char *find)
{
 const char *cp = strstr(string, find);

 if (cp)
  sscanf(cp + strlen(find), "=%u", i);
}
