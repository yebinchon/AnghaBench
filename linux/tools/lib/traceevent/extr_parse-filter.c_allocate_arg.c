
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_filter_arg {int dummy; } ;


 struct tep_filter_arg* calloc (int,int) ;

__attribute__((used)) static struct tep_filter_arg *allocate_arg(void)
{
 return calloc(1, sizeof(struct tep_filter_arg));
}
