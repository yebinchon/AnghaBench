
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gssx_arg_accept_sec_context {int npages; scalar_t__* pages; } ;


 int __free_page (scalar_t__) ;
 int kfree (scalar_t__*) ;

__attribute__((used)) static void gssp_free_receive_pages(struct gssx_arg_accept_sec_context *arg)
{
 int i;

 for (i = 0; i < arg->npages && arg->pages[i]; i++)
  __free_page(arg->pages[i]);

 kfree(arg->pages);
}
