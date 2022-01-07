
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (char const*,char*) ;
 char* strcasestr (char const*,char const*) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static bool match_metric(const char *n, const char *list)
{
 int len;
 char *m;

 if (!list)
  return 0;
 if (!strcmp(list, "all"))
  return 1;
 if (!n)
  return !strcasecmp(list, "No_group");
 len = strlen(list);
 m = strcasestr(n, list);
 if (!m)
  return 0;
 if ((m == n || m[-1] == ';' || m[-1] == ' ') &&
     (m[len] == 0 || m[len] == ';'))
  return 1;
 return 0;
}
