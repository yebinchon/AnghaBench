
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int index; } ;
struct fuse_args_pages {int num_pages; int * pages; } ;
struct TYPE_4__ {int offset; } ;
struct TYPE_5__ {TYPE_1__ in; } ;
struct TYPE_6__ {struct fuse_args_pages ap; TYPE_2__ write; } ;
struct fuse_writepage_args {scalar_t__ inode; struct fuse_writepage_args* next; TYPE_3__ ia; int writepages_entry; } ;
struct fuse_inode {int lock; int writepages; } ;
struct backing_dev_info {int wb; } ;
typedef int pgoff_t ;


 int NR_WRITEBACK_TEMP ;
 int PAGE_SHIFT ;
 int WARN_ON (int) ;
 int WB_WRITEBACK ;
 int dec_node_page_state (int ,int ) ;
 int dec_wb_stat (int *,int ) ;
 struct fuse_writepage_args* fuse_find_writeback (struct fuse_inode*,int,int) ;
 int fuse_writepage_free (struct fuse_writepage_args*) ;
 struct fuse_inode* get_fuse_inode (scalar_t__) ;
 struct backing_dev_info* inode_to_bdi (scalar_t__) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int swap (int ,int ) ;
 int wb_writeout_inc (int *) ;

__attribute__((used)) static bool fuse_writepage_in_flight(struct fuse_writepage_args *new_wpa,
         struct page *page)
{
 struct fuse_inode *fi = get_fuse_inode(new_wpa->inode);
 struct fuse_writepage_args *tmp;
 struct fuse_writepage_args *old_wpa;
 struct fuse_args_pages *new_ap = &new_wpa->ia.ap;

 WARN_ON(new_ap->num_pages != 0);

 spin_lock(&fi->lock);
 list_del(&new_wpa->writepages_entry);
 old_wpa = fuse_find_writeback(fi, page->index, page->index);
 if (!old_wpa) {
  list_add(&new_wpa->writepages_entry, &fi->writepages);
  spin_unlock(&fi->lock);
  return 0;
 }

 new_ap->num_pages = 1;
 for (tmp = old_wpa->next; tmp; tmp = tmp->next) {
  pgoff_t curr_index;

  WARN_ON(tmp->inode != new_wpa->inode);
  curr_index = tmp->ia.write.in.offset >> PAGE_SHIFT;
  if (curr_index == page->index) {
   WARN_ON(tmp->ia.ap.num_pages != 1);
   swap(tmp->ia.ap.pages[0], new_ap->pages[0]);
   break;
  }
 }

 if (!tmp) {
  new_wpa->next = old_wpa->next;
  old_wpa->next = new_wpa;
 }

 spin_unlock(&fi->lock);

 if (tmp) {
  struct backing_dev_info *bdi = inode_to_bdi(new_wpa->inode);

  dec_wb_stat(&bdi->wb, WB_WRITEBACK);
  dec_node_page_state(new_ap->pages[0], NR_WRITEBACK_TEMP);
  wb_writeout_inc(&bdi->wb);
  fuse_writepage_free(new_wpa);
 }

 return 1;
}
