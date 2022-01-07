
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char) ;
 int strlen (char*) ;

__attribute__((used)) static inline char *strim(char *string)
{
 char *ret;

 if (!string)
  return ((void*)0);
 while (*string) {
  if (!isspace(*string))
   break;
  string++;
 }
 ret = string;

 string = ret + strlen(ret) - 1;
 while (string > ret) {
  if (!isspace(*string))
   break;
  string--;
 }
 string[1] = 0;

 return ret;
}
