
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t group_children_description_show(struct config_item *item,
  char *page)
{
 return sprintf(page,
"[03-group-children]\n"
"\n"
"This subsystem allows the creation of child config_groups.  These\n"
"groups are like the subsystem simple-children.\n");
}
