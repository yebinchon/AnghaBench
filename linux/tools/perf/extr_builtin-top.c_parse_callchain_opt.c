
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {struct callchain_param* value; } ;
struct callchain_param {int enabled; int record_mode; } ;
struct TYPE_2__ {int use_callchain; } ;


 int CALLCHAIN_FP ;
 int CALLCHAIN_NONE ;
 int parse_callchain_top_opt (char const*) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int
parse_callchain_opt(const struct option *opt, const char *arg, int unset)
{
 struct callchain_param *callchain = opt->value;

 callchain->enabled = !unset;
 callchain->record_mode = CALLCHAIN_FP;




 if (unset) {
  symbol_conf.use_callchain = 0;
  callchain->record_mode = CALLCHAIN_NONE;
  return 0;
 }

 return parse_callchain_top_opt(arg);
}
