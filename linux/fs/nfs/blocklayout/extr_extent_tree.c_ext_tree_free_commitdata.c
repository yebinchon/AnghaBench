
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_layoutcommit_args {int layoutupdate_page; int * layoutupdate_pages; int start_p; } ;


 int DIV_ROUND_UP (size_t,int ) ;
 int PAGE_SIZE ;
 int kfree (int *) ;
 int put_page (int ) ;
 int vfree (int ) ;

__attribute__((used)) static void ext_tree_free_commitdata(struct nfs4_layoutcommit_args *arg,
  size_t buffer_size)
{
 if (arg->layoutupdate_pages != &arg->layoutupdate_page) {
  int nr_pages = DIV_ROUND_UP(buffer_size, PAGE_SIZE), i;

  for (i = 0; i < nr_pages; i++)
   put_page(arg->layoutupdate_pages[i]);
  vfree(arg->start_p);
  kfree(arg->layoutupdate_pages);
 } else {
  put_page(arg->layoutupdate_page);
 }
}
