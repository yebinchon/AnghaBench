
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __PARSE_EVENTS__TERM_TYPE_NR ;
 int config_term_avail (int,int *) ;
 char** config_term_names ;
 int strcat (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void config_terms_list(char *buf, size_t buf_sz)
{
 int i;
 bool first = 1;

 buf[0] = '\0';
 for (i = 0; i < __PARSE_EVENTS__TERM_TYPE_NR; i++) {
  const char *name = config_term_names[i];

  if (!config_term_avail(i, ((void*)0)))
   continue;
  if (!name)
   continue;
  if (name[0] == '<')
   continue;

  if (strlen(buf) + strlen(name) + 2 >= buf_sz)
   return;

  if (!first)
   strcat(buf, ",");
  else
   first = 0;
  strcat(buf, name);
 }
}
