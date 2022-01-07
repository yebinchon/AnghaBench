
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* libapi_print_fn_t ;


 void* __pr_debug ;
 void* __pr_info ;
 void* __pr_warning ;

void libapi_set_print(libapi_print_fn_t warn,
        libapi_print_fn_t info,
        libapi_print_fn_t debug)
{
 __pr_warning = warn;
 __pr_info = info;
 __pr_debug = debug;
}
