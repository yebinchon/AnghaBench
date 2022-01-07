
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intlist {int dummy; } ;


 struct intlist* intlist__new (char const*) ;
 int pr_err (char*,char const*) ;

int setup_intlist(struct intlist **list, const char *list_str,
    const char *list_name)
{
 if (list_str == ((void*)0))
  return 0;

 *list = intlist__new(list_str);
 if (!*list) {
  pr_err("problems parsing %s list\n", list_name);
  return -1;
 }
 return 0;
}
