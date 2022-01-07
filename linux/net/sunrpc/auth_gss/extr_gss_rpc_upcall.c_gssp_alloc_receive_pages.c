
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct gssx_arg_accept_sec_context {int pages; int npages; } ;


 int DIV_ROUND_UP (int,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NGROUPS_MAX ;
 int PAGE_SIZE ;
 int kcalloc (int ,int,int ) ;

__attribute__((used)) static int gssp_alloc_receive_pages(struct gssx_arg_accept_sec_context *arg)
{
 arg->npages = DIV_ROUND_UP(NGROUPS_MAX * 4, PAGE_SIZE);
 arg->pages = kcalloc(arg->npages, sizeof(struct page *), GFP_KERNEL);




 if (!arg->pages)
  return -ENOMEM;
 return 0;
}
