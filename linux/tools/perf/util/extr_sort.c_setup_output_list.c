
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_list {int dummy; } ;


 int EINVAL ;
 int ESRCH ;
 int output_field_add (struct perf_hpp_list*,char*) ;
 char* strtok_r (char*,char*,char**) ;
 int ui__error (char*,char*) ;

__attribute__((used)) static int setup_output_list(struct perf_hpp_list *list, char *str)
{
 char *tmp, *tok;
 int ret = 0;

 for (tok = strtok_r(str, ", ", &tmp);
   tok; tok = strtok_r(((void*)0), ", ", &tmp)) {
  ret = output_field_add(list, tok);
  if (ret == -EINVAL) {
   ui__error("Invalid --fields key: `%s'", tok);
   break;
  } else if (ret == -ESRCH) {
   ui__error("Unknown --fields key: `%s'", tok);
   break;
  }
 }

 return ret;
}
