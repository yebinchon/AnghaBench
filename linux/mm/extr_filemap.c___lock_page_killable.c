
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct page {int dummy; } ;


 int EXCLUSIVE ;
 int PG_locked ;
 int TASK_KILLABLE ;
 struct page* compound_head (struct page*) ;
 int * page_waitqueue (struct page*) ;
 int wait_on_page_bit_common (int *,struct page*,int ,int ,int ) ;

int __lock_page_killable(struct page *__page)
{
 struct page *page = compound_head(__page);
 wait_queue_head_t *q = page_waitqueue(page);
 return wait_on_page_bit_common(q, page, PG_locked, TASK_KILLABLE,
     EXCLUSIVE);
}
