
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int value; } ;


 int callchain_param ;
 int record_opts__parse_callchain (int ,int *,char const*,int) ;

int record_parse_callchain_opt(const struct option *opt,
          const char *arg,
          int unset)
{
 return record_opts__parse_callchain(opt->value, &callchain_param, arg, unset);
}
