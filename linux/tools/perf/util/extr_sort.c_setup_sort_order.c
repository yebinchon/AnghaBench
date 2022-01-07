
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ asprintf (char**,char*,int ,char*) ;
 int get_default_sort_order (struct evlist*) ;
 scalar_t__ is_strict_order (char*) ;
 int pr_err (char*) ;
 char* sort_order ;

__attribute__((used)) static int setup_sort_order(struct evlist *evlist)
{
 char *new_sort_order;





 if (!sort_order || is_strict_order(sort_order))
  return 0;

 if (sort_order[1] == '\0') {
  pr_err("Invalid --sort key: `+'");
  return -EINVAL;
 }





 if (asprintf(&new_sort_order, "%s,%s",
       get_default_sort_order(evlist), sort_order + 1) < 0) {
  pr_err("Not enough memory to set up --sort");
  return -ENOMEM;
 }

 sort_order = new_sort_order;
 return 0;
}
