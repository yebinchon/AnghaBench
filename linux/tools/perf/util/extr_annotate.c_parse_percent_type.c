
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PERCENT_HITS_GLOBAL ;
 unsigned int PERCENT_HITS_LOCAL ;
 unsigned int PERCENT_PERIOD_GLOBAL ;
 unsigned int PERCENT_PERIOD_LOCAL ;
 int strcmp (char*,char*) ;

__attribute__((used)) static unsigned int parse_percent_type(char *str1, char *str2)
{
 unsigned int type = (unsigned int) -1;

 if (!strcmp("period", str1)) {
  if (!strcmp("local", str2))
   type = PERCENT_PERIOD_LOCAL;
  else if (!strcmp("global", str2))
   type = PERCENT_PERIOD_GLOBAL;
 }

 if (!strcmp("hits", str1)) {
  if (!strcmp("local", str2))
   type = PERCENT_HITS_LOCAL;
  else if (!strcmp("global", str2))
   type = PERCENT_HITS_GLOBAL;
 }

 return type;
}
