
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 double strtod (char*,char**) ;

__attribute__((used)) static int parse_percent(double *pcnt, char *str)
{
 char *c, *endptr;
 double d;

 c = strchr(str, '%');
 if (c)
  *c = '\0';
 else
  return -1;

 d = strtod(str, &endptr);
 if (endptr != str + strlen(str))
  return -1;

 *pcnt = d / 100.0;
 return 0;
}
