
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERF_EVSEL__MAX_ALIASES ;
 int strlen (char const*) ;
 int strncasecmp (char*,char const*,int) ;

__attribute__((used)) static int parse_aliases(char *str, const char *names[][PERF_EVSEL__MAX_ALIASES], int size)
{
 int i, j;
 int n, longest = -1;

 for (i = 0; i < size; i++) {
  for (j = 0; j < PERF_EVSEL__MAX_ALIASES && names[i][j]; j++) {
   n = strlen(names[i][j]);
   if (n > longest && !strncasecmp(str, names[i][j], n))
    longest = n;
  }
  if (longest > 0)
   return i;
 }

 return -1;
}
