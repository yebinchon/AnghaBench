
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct page {int dummy; } ;


 int SHARED ;
 int TASK_KILLABLE ;
 int * page_waitqueue (struct page*) ;
 int wait_on_page_bit_common (int *,struct page*,int,int ,int ) ;

int wait_on_page_bit_killable(struct page *page, int bit_nr)
{
 wait_queue_head_t *q = page_waitqueue(page);
 return wait_on_page_bit_common(q, page, bit_nr, TASK_KILLABLE, SHARED);
}
