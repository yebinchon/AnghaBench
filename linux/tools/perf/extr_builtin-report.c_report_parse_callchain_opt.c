
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {struct callchain_param* value; } ;
struct callchain_param {int enabled; int mode; } ;
struct TYPE_2__ {int use_callchain; } ;


 int CHAIN_NONE ;
 int parse_callchain_report_opt (char const*) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int
report_parse_callchain_opt(const struct option *opt, const char *arg, int unset)
{
 struct callchain_param *callchain = opt->value;

 callchain->enabled = !unset;



 if (unset) {
  symbol_conf.use_callchain = 0;
  callchain->mode = CHAIN_NONE;
  return 0;
 }

 return parse_callchain_report_opt(arg);
}
