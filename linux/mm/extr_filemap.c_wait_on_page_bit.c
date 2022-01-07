
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct page {int dummy; } ;


 int SHARED ;
 int TASK_UNINTERRUPTIBLE ;
 int * page_waitqueue (struct page*) ;
 int wait_on_page_bit_common (int *,struct page*,int,int ,int ) ;

void wait_on_page_bit(struct page *page, int bit_nr)
{
 wait_queue_head_t *q = page_waitqueue(page);
 wait_on_page_bit_common(q, page, bit_nr, TASK_UNINTERRUPTIBLE, SHARED);
}
