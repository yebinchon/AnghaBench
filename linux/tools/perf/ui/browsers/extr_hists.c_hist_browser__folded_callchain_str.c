
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_browser {int show_dso; } ;
struct callchain_list {int dummy; } ;
typedef int bf ;
struct TYPE_2__ {scalar_t__ field_sep; } ;


 scalar_t__ asprintf (char**,char*,char const*,...) ;
 char* callchain_list__sym_name (struct callchain_list*,char*,int,int ) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static char *hist_browser__folded_callchain_str(struct hist_browser *browser,
      struct callchain_list *chain,
      char *value_str, char *old_str)
{
 char bf[1024];
 const char *str;
 char *new;

 str = callchain_list__sym_name(chain, bf, sizeof(bf),
           browser->show_dso);
 if (old_str) {
  if (asprintf(&new, "%s%s%s", old_str,
        symbol_conf.field_sep ?: ";", str) < 0)
   new = ((void*)0);
 } else {
  if (value_str) {
   if (asprintf(&new, "%s %s", value_str, str) < 0)
    new = ((void*)0);
  } else {
   if (asprintf(&new, "%s", str) < 0)
    new = ((void*)0);
  }
 }
 return new;
}
