
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (scalar_t__) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *concat(const char *left, const char *right)
{
 char *result = malloc(strlen(left) + strlen(right) + 1);

 strcpy(result, left);
 strcat(result, right);
 return result;
}
