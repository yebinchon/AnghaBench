
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callchain_param {int dummy; } ;


 int parse_callchain_record (char const*,struct callchain_param*) ;

int parse_callchain_record_opt(const char *arg, struct callchain_param *param)
{
 return parse_callchain_record(arg, param);
}
