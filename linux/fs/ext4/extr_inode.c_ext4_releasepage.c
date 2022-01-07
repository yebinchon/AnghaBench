
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
typedef int journal_t ;
typedef int gfp_t ;
struct TYPE_2__ {int host; } ;


 int * EXT4_JOURNAL (int ) ;
 scalar_t__ PageChecked (struct page*) ;
 int jbd2_journal_try_to_free_buffers (int *,struct page*,int ) ;
 int trace_ext4_releasepage (struct page*) ;
 int try_to_free_buffers (struct page*) ;

__attribute__((used)) static int ext4_releasepage(struct page *page, gfp_t wait)
{
 journal_t *journal = EXT4_JOURNAL(page->mapping->host);

 trace_ext4_releasepage(page);


 if (PageChecked(page))
  return 0;
 if (journal)
  return jbd2_journal_try_to_free_buffers(journal, page, wait);
 else
  return try_to_free_buffers(page);
}
