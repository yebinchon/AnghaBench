
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
typedef int journal_t ;
struct TYPE_2__ {int host; } ;


 int ClearPageChecked (struct page*) ;
 int * EXT4_JOURNAL (int ) ;
 unsigned int PAGE_SIZE ;
 int jbd2_journal_invalidatepage (int *,struct page*,unsigned int,unsigned int) ;
 int trace_ext4_journalled_invalidatepage (struct page*,unsigned int,unsigned int) ;

__attribute__((used)) static int __ext4_journalled_invalidatepage(struct page *page,
         unsigned int offset,
         unsigned int length)
{
 journal_t *journal = EXT4_JOURNAL(page->mapping->host);

 trace_ext4_journalled_invalidatepage(page, offset, length);




 if (offset == 0 && length == PAGE_SIZE)
  ClearPageChecked(page);

 return jbd2_journal_invalidatepage(journal, page, offset, length);
}
