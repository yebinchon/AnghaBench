
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct page {int dummy; } ;


 int PAGE_WAIT_TABLE_BITS ;
 size_t hash_ptr (struct page*,int ) ;
 int * page_wait_table ;

__attribute__((used)) static wait_queue_head_t *page_waitqueue(struct page *page)
{
 return &page_wait_table[hash_ptr(page, PAGE_WAIT_TABLE_BITS)];
}
