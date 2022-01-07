
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct exit_reasons_table {char const* reason; scalar_t__ exit_code; } ;


 struct exit_reasons_table* hcall_reasons ;
 int pr_debug (char*,unsigned long long) ;

__attribute__((used)) static const char *get_hcall_exit_reason(u64 exit_code)
{
 struct exit_reasons_table *tbl = hcall_reasons;

 while (tbl->reason != ((void*)0)) {
  if (tbl->exit_code == exit_code)
   return tbl->reason;
  tbl++;
 }

 pr_debug("Unknown hcall code: %lld\n",
        (unsigned long long)exit_code);
 return "UNKNOWN";
}
