
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int dummy; } ;


 int ENOMEM ;
 int field_order ;
 int free (char*) ;
 char* get_default_sort_order (struct evlist*) ;
 scalar_t__ is_strict_order (int ) ;
 int perf_hpp_list ;
 int pr_err (char*) ;
 char* setup_overhead (char*) ;
 int setup_sort_list (int *,char*,struct evlist*) ;
 int setup_sort_order (struct evlist*) ;
 char* sort_order ;
 char* strdup (char const*) ;

__attribute__((used)) static int __setup_sorting(struct evlist *evlist)
{
 char *str;
 const char *sort_keys;
 int ret = 0;

 ret = setup_sort_order(evlist);
 if (ret)
  return ret;

 sort_keys = sort_order;
 if (sort_keys == ((void*)0)) {
  if (is_strict_order(field_order)) {




   return 0;
  }

  sort_keys = get_default_sort_order(evlist);
 }

 str = strdup(sort_keys);
 if (str == ((void*)0)) {
  pr_err("Not enough memory to setup sort keys");
  return -ENOMEM;
 }




 if (!is_strict_order(field_order)) {
  str = setup_overhead(str);
  if (str == ((void*)0)) {
   pr_err("Not enough memory to setup overhead keys");
   return -ENOMEM;
  }
 }

 ret = setup_sort_list(&perf_hpp_list, str, evlist);

 free(str);
 return ret;
}
