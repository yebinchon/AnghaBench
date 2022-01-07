
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binprm {int dummy; } ;


 int MAX_ARG_PAGES ;
 int free_arg_page (struct linux_binprm*,int) ;

__attribute__((used)) static void free_arg_pages(struct linux_binprm *bprm)
{
 int i;

 for (i = 0; i < MAX_ARG_PAGES; i++)
  free_arg_page(bprm, i);
}
