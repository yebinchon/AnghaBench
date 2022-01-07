
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct page {int dummy; } ;


 int DROP ;
 int PG_locked ;
 int TASK_UNINTERRUPTIBLE ;
 struct page* compound_head (struct page*) ;
 int * page_waitqueue (struct page*) ;
 int wait_on_page_bit_common (int *,struct page*,int ,int ,int ) ;

void put_and_wait_on_page_locked(struct page *page)
{
 wait_queue_head_t *q;

 page = compound_head(page);
 q = page_waitqueue(page);
 wait_on_page_bit_common(q, page, PG_locked, TASK_UNINTERRUPTIBLE, DROP);
}
