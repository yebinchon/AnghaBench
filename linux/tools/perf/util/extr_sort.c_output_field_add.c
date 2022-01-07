
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_dimension {int name; } ;
struct perf_hpp_list {int dummy; } ;
struct hpp_dimension {int name; } ;


 unsigned int ARRAY_SIZE (struct sort_dimension*) ;
 int ESRCH ;
 int __hpp_dimension__add_output (struct perf_hpp_list*,struct sort_dimension*) ;
 int __sort_dimension__add_output (struct perf_hpp_list*,struct sort_dimension*) ;
 struct sort_dimension* bstack_sort_dimensions ;
 struct sort_dimension* common_sort_dimensions ;
 struct sort_dimension* hpp_sort_dimensions ;
 struct sort_dimension* memory_sort_dimensions ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char*,int ,int ) ;

int output_field_add(struct perf_hpp_list *list, char *tok)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(common_sort_dimensions); i++) {
  struct sort_dimension *sd = &common_sort_dimensions[i];

  if (strncasecmp(tok, sd->name, strlen(tok)))
   continue;

  return __sort_dimension__add_output(list, sd);
 }

 for (i = 0; i < ARRAY_SIZE(hpp_sort_dimensions); i++) {
  struct hpp_dimension *hd = &hpp_sort_dimensions[i];

  if (strncasecmp(tok, hd->name, strlen(tok)))
   continue;

  return __hpp_dimension__add_output(list, hd);
 }

 for (i = 0; i < ARRAY_SIZE(bstack_sort_dimensions); i++) {
  struct sort_dimension *sd = &bstack_sort_dimensions[i];

  if (strncasecmp(tok, sd->name, strlen(tok)))
   continue;

  return __sort_dimension__add_output(list, sd);
 }

 for (i = 0; i < ARRAY_SIZE(memory_sort_dimensions); i++) {
  struct sort_dimension *sd = &memory_sort_dimensions[i];

  if (strncasecmp(tok, sd->name, strlen(tok)))
   continue;

  return __sort_dimension__add_output(list, sd);
 }

 return -ESRCH;
}
