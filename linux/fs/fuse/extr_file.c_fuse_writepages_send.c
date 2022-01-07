
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_3__ {int num_pages; } ;
struct TYPE_4__ {int ff; TYPE_1__ ap; } ;
struct fuse_writepage_args {int queue_entry; TYPE_2__ ia; } ;
struct fuse_inode {int lock; int queued_writes; } ;
struct fuse_fill_wb_data {int * orig_pages; int ff; struct inode* inode; struct fuse_writepage_args* wpa; } ;


 int end_page_writeback (int ) ;
 int fuse_file_get (int ) ;
 int fuse_flush_writepages (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void fuse_writepages_send(struct fuse_fill_wb_data *data)
{
 struct fuse_writepage_args *wpa = data->wpa;
 struct inode *inode = data->inode;
 struct fuse_inode *fi = get_fuse_inode(inode);
 int num_pages = wpa->ia.ap.num_pages;
 int i;

 wpa->ia.ff = fuse_file_get(data->ff);
 spin_lock(&fi->lock);
 list_add_tail(&wpa->queue_entry, &fi->queued_writes);
 fuse_flush_writepages(inode);
 spin_unlock(&fi->lock);

 for (i = 0; i < num_pages; i++)
  end_page_writeback(data->orig_pages[i]);
}
