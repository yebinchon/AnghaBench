
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int dummy; } ;
struct hist_browser {int dummy; } ;
struct callchain_print_arg {int printed; int * fp; } ;
typedef int FILE ;


 int hist_browser__check_dump_full ;
 int hist_browser__fprintf_callchain_entry ;
 int hist_browser__show_callchain (struct hist_browser*,struct hist_entry*,int,int ,int ,struct callchain_print_arg*,int ) ;

__attribute__((used)) static int hist_browser__fprintf_callchain(struct hist_browser *browser,
        struct hist_entry *he, FILE *fp,
        int level)
{
 struct callchain_print_arg arg = {
  .fp = fp,
 };

 hist_browser__show_callchain(browser, he, level, 0,
         hist_browser__fprintf_callchain_entry, &arg,
         hist_browser__check_dump_full);
 return arg.printed;
}
