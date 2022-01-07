
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct record_opts {int sample_address; } ;
struct callchain_param {int enabled; scalar_t__ record_mode; } ;


 scalar_t__ CALLCHAIN_DWARF ;
 scalar_t__ CALLCHAIN_NONE ;
 int callchain_debug (struct callchain_param*) ;
 int parse_callchain_record_opt (char const*,struct callchain_param*) ;
 int pr_debug (char*) ;

int record_opts__parse_callchain(struct record_opts *record,
     struct callchain_param *callchain,
     const char *arg, bool unset)
{
 int ret;
 callchain->enabled = !unset;


 if (unset) {
  callchain->record_mode = CALLCHAIN_NONE;
  pr_debug("callchain: disabled\n");
  return 0;
 }

 ret = parse_callchain_record_opt(arg, callchain);
 if (!ret) {

  if (callchain->record_mode == CALLCHAIN_DWARF)
   record->sample_address = 1;
  callchain_debug(callchain);
 }

 return ret;
}
