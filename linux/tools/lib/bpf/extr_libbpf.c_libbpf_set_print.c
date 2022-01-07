
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libbpf_print_fn_t ;


 int __libbpf_pr ;

libbpf_print_fn_t libbpf_set_print(libbpf_print_fn_t fn)
{
 libbpf_print_fn_t old_print_fn = __libbpf_pr;

 __libbpf_pr = fn;
 return old_print_fn;
}
