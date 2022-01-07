
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_fill_wb_data {int orig_pages; int * ff; TYPE_3__* wpa; struct inode* inode; } ;
struct fuse_conn {int max_pages; } ;
struct address_space {struct inode* host; } ;
struct TYPE_4__ {int num_pages; } ;
struct TYPE_5__ {TYPE_1__ ap; } ;
struct TYPE_6__ {TYPE_2__ ia; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_NOFS ;
 int WARN_ON (int) ;
 int fuse_file_put (int *,int,int) ;
 int fuse_writepages_fill ;
 int fuse_writepages_send (struct fuse_fill_wb_data*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int kcalloc (int ,int,int ) ;
 int kfree (int ) ;
 int write_cache_pages (struct address_space*,struct writeback_control*,int ,struct fuse_fill_wb_data*) ;

__attribute__((used)) static int fuse_writepages(struct address_space *mapping,
      struct writeback_control *wbc)
{
 struct inode *inode = mapping->host;
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct fuse_fill_wb_data data;
 int err;

 err = -EIO;
 if (is_bad_inode(inode))
  goto out;

 data.inode = inode;
 data.wpa = ((void*)0);
 data.ff = ((void*)0);

 err = -ENOMEM;
 data.orig_pages = kcalloc(fc->max_pages,
      sizeof(struct page *),
      GFP_NOFS);
 if (!data.orig_pages)
  goto out;

 err = write_cache_pages(mapping, wbc, fuse_writepages_fill, &data);
 if (data.wpa) {

  WARN_ON(!data.wpa->ia.ap.num_pages);
  fuse_writepages_send(&data);
  err = 0;
 }
 if (data.ff)
  fuse_file_put(data.ff, 0, 0);

 kfree(data.orig_pages);
out:
 return err;
}
