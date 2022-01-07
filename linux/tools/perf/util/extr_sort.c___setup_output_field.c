
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 int * field_order ;
 int free (char*) ;
 int is_strict_order (int *) ;
 int perf_hpp_list ;
 int pr_err (char*) ;
 int setup_output_list (int *,char*) ;
 char* strdup (int *) ;
 int strlen (char*) ;

__attribute__((used)) static int __setup_output_field(void)
{
 char *str, *strp;
 int ret = -EINVAL;

 if (field_order == ((void*)0))
  return 0;

 strp = str = strdup(field_order);
 if (str == ((void*)0)) {
  pr_err("Not enough memory to setup output fields");
  return -ENOMEM;
 }

 if (!is_strict_order(field_order))
  strp++;

 if (!strlen(strp)) {
  pr_err("Invalid --fields key: `+'");
  goto out;
 }

 ret = setup_output_list(&perf_hpp_list, strp);

out:
 free(str);
 return ret;
}
