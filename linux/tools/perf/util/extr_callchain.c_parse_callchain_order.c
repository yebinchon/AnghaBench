
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int order_set; int order; } ;


 int ORDER_CALLEE ;
 int ORDER_CALLER ;
 TYPE_1__ callchain_param ;
 int strlen (char const*) ;
 int strncmp (char const*,char*,int ) ;

__attribute__((used)) static int parse_callchain_order(const char *value)
{
 if (!strncmp(value, "caller", strlen(value))) {
  callchain_param.order = ORDER_CALLER;
  callchain_param.order_set = 1;
  return 0;
 }
 if (!strncmp(value, "callee", strlen(value))) {
  callchain_param.order = ORDER_CALLEE;
  callchain_param.order_set = 1;
  return 0;
 }
 return -1;
}
