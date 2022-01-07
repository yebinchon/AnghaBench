
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;


 int CCVAL_COUNT ;
 int CCVAL_PERCENT ;
 int CCVAL_PERIOD ;
 TYPE_1__ callchain_param ;
 int strlen (char const*) ;
 int strncmp (char const*,char*,int ) ;

__attribute__((used)) static int parse_callchain_value(const char *value)
{
 if (!strncmp(value, "percent", strlen(value))) {
  callchain_param.value = CCVAL_PERCENT;
  return 0;
 }
 if (!strncmp(value, "period", strlen(value))) {
  callchain_param.value = CCVAL_PERIOD;
  return 0;
 }
 if (!strncmp(value, "count", strlen(value))) {
  callchain_param.value = CCVAL_COUNT;
  return 0;
 }
 return -1;
}
