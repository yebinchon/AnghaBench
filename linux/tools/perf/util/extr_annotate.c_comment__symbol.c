
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 char* strchr (char*,char) ;
 char* strdup (char*) ;
 int * strstr (char*,char*) ;
 int strtoull (char*,char**,int) ;

__attribute__((used)) static int comment__symbol(char *raw, char *comment, u64 *addrp, char **namep)
{
 char *endptr, *name, *t;

 if (strstr(raw, "(%rip)") == ((void*)0))
  return 0;

 *addrp = strtoull(comment, &endptr, 16);
 if (endptr == comment)
  return 0;
 name = strchr(endptr, '<');
 if (name == ((void*)0))
  return -1;

 name++;

 t = strchr(name, '>');
 if (t == ((void*)0))
  return 0;

 *t = '\0';
 *namep = strdup(name);
 *t = '>';

 return 0;
}
