
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rm_rdma_op {unsigned int op_nents; scalar_t__ op_active; int * op_notifier; int op_write; int * op_sg; } ;
struct page {int mapping; } ;


 int WARN_ON (int) ;
 scalar_t__ irqs_disabled () ;
 int kfree (int *) ;
 int put_page (struct page*) ;
 int set_page_dirty (struct page*) ;
 struct page* sg_page (int *) ;

void rds_rdma_free_op(struct rm_rdma_op *ro)
{
 unsigned int i;

 for (i = 0; i < ro->op_nents; i++) {
  struct page *page = sg_page(&ro->op_sg[i]);




  if (!ro->op_write) {
   WARN_ON(!page->mapping && irqs_disabled());
   set_page_dirty(page);
  }
  put_page(page);
 }

 kfree(ro->op_notifier);
 ro->op_notifier = ((void*)0);
 ro->op_active = 0;
}
