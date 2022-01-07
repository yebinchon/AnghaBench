
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (int) ;
 scalar_t__ pmu_have_event (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int topdown_filter_events(const char **attr, char **str, bool use_group)
{
 int off = 0;
 int i;
 int len = 0;
 char *s;

 for (i = 0; attr[i]; i++) {
  if (pmu_have_event("cpu", attr[i])) {
   len += strlen(attr[i]) + 1;
   attr[i - off] = attr[i];
  } else
   off++;
 }
 attr[i - off] = ((void*)0);

 *str = malloc(len + 1 + 2);
 if (!*str)
  return -1;
 s = *str;
 if (i - off == 0) {
  *s = 0;
  return 0;
 }
 if (use_group)
  *s++ = '{';
 for (i = 0; attr[i]; i++) {
  strcpy(s, attr[i]);
  s += strlen(s);
  *s++ = ',';
 }
 if (use_group) {
  s[-1] = '}';
  *s = 0;
 } else
  s[-1] = 0;
 return 0;
}
