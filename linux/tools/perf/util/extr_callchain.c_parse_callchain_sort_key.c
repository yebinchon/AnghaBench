
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int branch_callstack; int key; } ;


 int CCKEY_ADDRESS ;
 int CCKEY_FUNCTION ;
 int CCKEY_SRCLINE ;
 TYPE_1__ callchain_param ;
 int strlen (char const*) ;
 int strncmp (char const*,char*,int ) ;

__attribute__((used)) static int parse_callchain_sort_key(const char *value)
{
 if (!strncmp(value, "function", strlen(value))) {
  callchain_param.key = CCKEY_FUNCTION;
  return 0;
 }
 if (!strncmp(value, "address", strlen(value))) {
  callchain_param.key = CCKEY_ADDRESS;
  return 0;
 }
 if (!strncmp(value, "srcline", strlen(value))) {
  callchain_param.key = CCKEY_SRCLINE;
  return 0;
 }
 if (!strncmp(value, "branch", strlen(value))) {
  callchain_param.branch_callstack = 1;
  return 0;
 }
 return -1;
}
