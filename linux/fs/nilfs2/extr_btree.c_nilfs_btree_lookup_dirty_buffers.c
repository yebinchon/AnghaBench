
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pagevec {int * pages; } ;
struct nilfs_bmap {int dummy; } ;
struct list_head {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
struct TYPE_2__ {struct address_space i_btnode_cache; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 TYPE_1__* NILFS_BMAP_I (struct nilfs_bmap*) ;
 int NILFS_BTREE_LEVEL_MAX ;
 int NILFS_BTREE_LEVEL_NODE_MIN ;
 int PAGECACHE_TAG_DIRTY ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 int cond_resched () ;
 int list_splice_tail (struct list_head*,struct list_head*) ;
 int nilfs_btree_add_dirty_buffer (struct nilfs_bmap*,struct list_head*,struct buffer_head*) ;
 struct buffer_head* page_buffers (int ) ;
 int pagevec_count (struct pagevec*) ;
 int pagevec_init (struct pagevec*) ;
 scalar_t__ pagevec_lookup_tag (struct pagevec*,struct address_space*,int *,int ) ;
 int pagevec_release (struct pagevec*) ;

__attribute__((used)) static void nilfs_btree_lookup_dirty_buffers(struct nilfs_bmap *btree,
          struct list_head *listp)
{
 struct address_space *btcache = &NILFS_BMAP_I(btree)->i_btnode_cache;
 struct list_head lists[NILFS_BTREE_LEVEL_MAX];
 struct pagevec pvec;
 struct buffer_head *bh, *head;
 pgoff_t index = 0;
 int level, i;

 for (level = NILFS_BTREE_LEVEL_NODE_MIN;
      level < NILFS_BTREE_LEVEL_MAX;
      level++)
  INIT_LIST_HEAD(&lists[level]);

 pagevec_init(&pvec);

 while (pagevec_lookup_tag(&pvec, btcache, &index,
     PAGECACHE_TAG_DIRTY)) {
  for (i = 0; i < pagevec_count(&pvec); i++) {
   bh = head = page_buffers(pvec.pages[i]);
   do {
    if (buffer_dirty(bh))
     nilfs_btree_add_dirty_buffer(btree,
             lists, bh);
   } while ((bh = bh->b_this_page) != head);
  }
  pagevec_release(&pvec);
  cond_resched();
 }

 for (level = NILFS_BTREE_LEVEL_NODE_MIN;
      level < NILFS_BTREE_LEVEL_MAX;
      level++)
  list_splice_tail(&lists[level], listp);
}
