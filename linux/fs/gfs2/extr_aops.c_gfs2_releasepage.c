
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct gfs2_sbd {int sd_ail_lock; } ;
struct gfs2_bufdata {struct buffer_head* bd_bh; int bd_list; scalar_t__ bd_tr; } ;
struct buffer_head {struct buffer_head* b_this_page; struct gfs2_bufdata* b_private; int b_count; } ;
struct address_space {int dummy; } ;
typedef int gfp_t ;


 scalar_t__ WARN_ON (int ) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 int buffer_pinned (struct buffer_head*) ;
 int gfs2_assert_warn (struct gfs2_sbd*,int) ;
 int gfs2_bufdata_cachep ;
 int gfs2_log_lock (struct gfs2_sbd*) ;
 int gfs2_log_unlock (struct gfs2_sbd*) ;
 struct gfs2_sbd* gfs2_mapping2sbd (struct address_space*) ;
 int kmem_cache_free (int ,struct gfs2_bufdata*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int try_to_free_buffers (struct page*) ;

int gfs2_releasepage(struct page *page, gfp_t gfp_mask)
{
 struct address_space *mapping = page->mapping;
 struct gfs2_sbd *sdp = gfs2_mapping2sbd(mapping);
 struct buffer_head *bh, *head;
 struct gfs2_bufdata *bd;

 if (!page_has_buffers(page))
  return 0;
 gfs2_log_lock(sdp);
 spin_lock(&sdp->sd_ail_lock);
 head = bh = page_buffers(page);
 do {
  if (atomic_read(&bh->b_count))
   goto cannot_release;
  bd = bh->b_private;
  if (bd && bd->bd_tr)
   goto cannot_release;
  if (buffer_dirty(bh) || WARN_ON(buffer_pinned(bh)))
   goto cannot_release;
  bh = bh->b_this_page;
 } while(bh != head);
 spin_unlock(&sdp->sd_ail_lock);

 head = bh = page_buffers(page);
 do {
  bd = bh->b_private;
  if (bd) {
   gfs2_assert_warn(sdp, bd->bd_bh == bh);
   if (!list_empty(&bd->bd_list))
    list_del_init(&bd->bd_list);
   bd->bd_bh = ((void*)0);
   bh->b_private = ((void*)0);
   kmem_cache_free(gfs2_bufdata_cachep, bd);
  }

  bh = bh->b_this_page;
 } while (bh != head);
 gfs2_log_unlock(sdp);

 return try_to_free_buffers(page);

cannot_release:
 spin_unlock(&sdp->sd_ail_lock);
 gfs2_log_unlock(sdp);
 return 0;
}
