
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __parse_callchain_report_opt (char const*,int) ;

int parse_callchain_report_opt(const char *arg)
{
 return __parse_callchain_report_opt(arg, 0);
}
