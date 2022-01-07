
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ mapping; } ;
struct buffer_head {struct page* b_page; int b_count; } ;


 int __brelse (struct buffer_head*) ;
 int atomic_read (int *) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 int get_page (struct page*) ;
 int put_page (struct page*) ;
 int try_to_free_buffers (struct page*) ;
 int trylock_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void release_buffer_page(struct buffer_head *bh)
{
 struct page *page;

 if (buffer_dirty(bh))
  goto nope;
 if (atomic_read(&bh->b_count) != 1)
  goto nope;
 page = bh->b_page;
 if (!page)
  goto nope;
 if (page->mapping)
  goto nope;


 if (!trylock_page(page))
  goto nope;

 get_page(page);
 __brelse(bh);
 try_to_free_buffers(page);
 unlock_page(page);
 put_page(page);
 return;

nope:
 __brelse(bh);
}
