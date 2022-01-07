
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct fsync_node_entry {unsigned int seq_id; int list; struct page* page; } ;
struct f2fs_sb_info {int fsync_node_lock; int fsync_node_num; int fsync_seg_id; int fsync_node_list; } ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 struct fsync_node_entry* f2fs_kmem_cache_alloc (int ,int ) ;
 int fsync_node_entry_slab ;
 int get_page (struct page*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int f2fs_add_fsync_node_entry(struct f2fs_sb_info *sbi,
       struct page *page)
{
 struct fsync_node_entry *fn;
 unsigned long flags;
 unsigned int seq_id;

 fn = f2fs_kmem_cache_alloc(fsync_node_entry_slab, GFP_NOFS);

 get_page(page);
 fn->page = page;
 INIT_LIST_HEAD(&fn->list);

 spin_lock_irqsave(&sbi->fsync_node_lock, flags);
 list_add_tail(&fn->list, &sbi->fsync_node_list);
 fn->seq_id = sbi->fsync_seg_id++;
 seq_id = fn->seq_id;
 sbi->fsync_node_num++;
 spin_unlock_irqrestore(&sbi->fsync_node_lock, flags);

 return seq_id;
}
