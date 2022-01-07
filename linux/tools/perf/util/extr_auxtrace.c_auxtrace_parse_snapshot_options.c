
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct record_opts {int auxtrace_snapshot_on_exit; } ;
struct auxtrace_record {int (* parse_snapshot_options ) (struct auxtrace_record*,struct record_opts*,char const*) ;} ;


 int EINVAL ;
 int pr_err (char*) ;
 int stub1 (struct auxtrace_record*,struct record_opts*,char const*) ;

int auxtrace_parse_snapshot_options(struct auxtrace_record *itr,
        struct record_opts *opts, const char *str)
{
 if (!str)
  return 0;


 switch (*str) {
 case 'e':
  opts->auxtrace_snapshot_on_exit = 1;
  str++;
  break;
 default:
  break;
 }

 if (itr)
  return itr->parse_snapshot_options(itr, opts, str);

 pr_err("No AUX area tracing to snapshot\n");
 return -EINVAL;
}
