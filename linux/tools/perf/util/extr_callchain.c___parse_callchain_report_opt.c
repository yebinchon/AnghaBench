
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int enabled; scalar_t__ record_mode; unsigned long dump_size; int print_limit; int min_percent; int mode; } ;
struct TYPE_5__ {int use_callchain; } ;


 scalar_t__ CALLCHAIN_DWARF ;
 int CHAIN_NONE ;
 TYPE_2__ callchain_param ;
 scalar_t__ callchain_register_param (TYPE_2__*) ;
 scalar_t__ get_stack_size (char*,unsigned long*) ;
 int parse_callchain_mode (char*) ;
 int parse_callchain_order (char*) ;
 scalar_t__ parse_callchain_record (char*,TYPE_2__*) ;
 int parse_callchain_sort_key (char*) ;
 int parse_callchain_value (char*) ;
 int pr_err (char*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int ) ;
 int strtod (char*,char**) ;
 char* strtok_r (char*,char*,char**) ;
 int strtoul (char*,char**,int ) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int
__parse_callchain_report_opt(const char *arg, bool allow_record_opt)
{
 char *tok;
 char *endptr, *saveptr = ((void*)0);
 bool minpcnt_set = 0;
 bool record_opt_set = 0;
 bool try_stack_size = 0;

 callchain_param.enabled = 1;
 symbol_conf.use_callchain = 1;

 if (!arg)
  return 0;

 while ((tok = strtok_r((char *)arg, ",", &saveptr)) != ((void*)0)) {
  if (!strncmp(tok, "none", strlen(tok))) {
   callchain_param.mode = CHAIN_NONE;
   callchain_param.enabled = 0;
   symbol_conf.use_callchain = 0;
   return 0;
  }

  if (!parse_callchain_mode(tok) ||
      !parse_callchain_order(tok) ||
      !parse_callchain_sort_key(tok) ||
      !parse_callchain_value(tok)) {

   try_stack_size = 0;
   goto next;
  } else if (allow_record_opt && !record_opt_set) {
   if (parse_callchain_record(tok, &callchain_param))
    goto try_numbers;


   if (callchain_param.record_mode == CALLCHAIN_DWARF)
    try_stack_size = 1;

   record_opt_set = 1;
   goto next;
  }

try_numbers:
  if (try_stack_size) {
   unsigned long size = 0;

   if (get_stack_size(tok, &size) < 0)
    return -1;
   callchain_param.dump_size = size;
   try_stack_size = 0;
  } else if (!minpcnt_set) {

   callchain_param.min_percent = strtod(tok, &endptr);
   if (tok == endptr)
    return -1;
   minpcnt_set = 1;
  } else {

   callchain_param.print_limit = strtoul(tok, &endptr, 0);
   if (tok == endptr)
    return -1;
  }
next:
  arg = ((void*)0);
 }

 if (callchain_register_param(&callchain_param) < 0) {
  pr_err("Can't register callchain params\n");
  return -1;
 }
 return 0;
}
