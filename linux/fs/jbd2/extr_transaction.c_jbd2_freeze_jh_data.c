
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct journal_head {int b_triggers; int b_frozen_triggers; int b_frozen_data; } ;
struct buffer_head {int b_size; int b_data; struct page* b_page; } ;


 int J_EXPECT_JH (struct journal_head*,int ,char*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int jbd2_buffer_frozen_trigger (struct journal_head*,char*,int ) ;
 struct buffer_head* jh2bh (struct journal_head*) ;
 char* kmap_atomic (struct page*) ;
 int kunmap_atomic (char*) ;
 int memcpy (int ,char*,int ) ;
 int offset_in_page (int ) ;

__attribute__((used)) static void jbd2_freeze_jh_data(struct journal_head *jh)
{
 struct page *page;
 int offset;
 char *source;
 struct buffer_head *bh = jh2bh(jh);

 J_EXPECT_JH(jh, buffer_uptodate(bh), "Possible IO failure.\n");
 page = bh->b_page;
 offset = offset_in_page(bh->b_data);
 source = kmap_atomic(page);

 jbd2_buffer_frozen_trigger(jh, source + offset, jh->b_triggers);
 memcpy(jh->b_frozen_data, source + offset, bh->b_size);
 kunmap_atomic(source);





 jh->b_frozen_triggers = jh->b_triggers;
}
