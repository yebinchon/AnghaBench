
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strlist {int dummy; } ;
struct TYPE_2__ {int has_filter; } ;


 int pr_err (char*,char const*) ;
 struct strlist* strlist__new (char const*,int *) ;
 TYPE_1__ symbol_conf ;

int setup_list(struct strlist **list, const char *list_str,
        const char *list_name)
{
 if (list_str == ((void*)0))
  return 0;

 *list = strlist__new(list_str, ((void*)0));
 if (!*list) {
  pr_err("problems parsing %s list\n", list_name);
  return -1;
 }

 symbol_conf.has_filter = 1;
 return 0;
}
