
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
struct tep_filter_arg {TYPE_1__ boolean; int type; } ;





 int TEP_ERRNO__MEM_ALLOC_FAILED ;
 int TEP_FILTER_ARG_BOOLEAN ;
 struct tep_filter_arg* allocate_arg () ;
 int free_arg (struct tep_filter_arg*) ;
 int show_error (char*,char*) ;
 int test_arg (struct tep_filter_arg*,struct tep_filter_arg*,char*) ;

__attribute__((used)) static int collapse_tree(struct tep_filter_arg *arg,
    struct tep_filter_arg **arg_collapsed, char *error_str)
{
 int ret;

 ret = test_arg(arg, arg, error_str);
 switch (ret) {
 case 129:
  break;

 case 128:
 case 130:
  free_arg(arg);
  arg = allocate_arg();
  if (arg) {
   arg->type = TEP_FILTER_ARG_BOOLEAN;
   arg->boolean.value = ret == 128;
  } else {
   show_error(error_str, "Failed to allocate filter arg");
   ret = TEP_ERRNO__MEM_ALLOC_FAILED;
  }
  break;

 default:

  free_arg(arg);
  arg = ((void*)0);
  break;
 }

 *arg_collapsed = arg;
 return ret;
}
