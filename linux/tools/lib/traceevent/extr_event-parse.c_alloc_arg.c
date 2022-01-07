
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_print_arg {int dummy; } ;


 struct tep_print_arg* calloc (int,int) ;

struct tep_print_arg *alloc_arg(void)
{
 return calloc(1, sizeof(struct tep_print_arg));
}
