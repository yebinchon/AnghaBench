
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct balloon_dev_info {int pages_lock; } ;


 int balloon_page_enqueue_one (struct balloon_dev_info*,struct page*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void balloon_page_enqueue(struct balloon_dev_info *b_dev_info,
     struct page *page)
{
 unsigned long flags;

 spin_lock_irqsave(&b_dev_info->pages_lock, flags);
 balloon_page_enqueue_one(b_dev_info, page);
 spin_unlock_irqrestore(&b_dev_info->pages_lock, flags);
}
