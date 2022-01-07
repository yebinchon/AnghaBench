
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rm_atomic_op {scalar_t__ op_active; int * op_notifier; int op_sg; } ;
struct page {int dummy; } ;


 int kfree (int *) ;
 int put_page (struct page*) ;
 int set_page_dirty (struct page*) ;
 struct page* sg_page (int ) ;

void rds_atomic_free_op(struct rm_atomic_op *ao)
{
 struct page *page = sg_page(ao->op_sg);




 set_page_dirty(page);
 put_page(page);

 kfree(ao->op_notifier);
 ao->op_notifier = ((void*)0);
 ao->op_active = 0;
}
