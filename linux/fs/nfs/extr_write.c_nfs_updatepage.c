
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs_open_context {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;


 int NFSIOS_VFSUPDATEPAGE ;
 int __set_page_dirty_nobuffers (struct page*) ;
 int dprintk (char*,int,long long,...) ;
 scalar_t__ i_size_read (struct inode*) ;
 unsigned int max (unsigned int,int ) ;
 scalar_t__ nfs_can_extend_write (struct file*,struct page*,struct inode*) ;
 struct nfs_open_context* nfs_file_open_context (struct file*) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_page_length (struct page*) ;
 int nfs_set_pageerror (struct address_space*) ;
 int nfs_writepage_setup (struct nfs_open_context*,struct page*,unsigned int,unsigned int) ;
 struct address_space* page_file_mapping (struct page*) ;
 scalar_t__ page_file_offset (struct page*) ;

int nfs_updatepage(struct file *file, struct page *page,
  unsigned int offset, unsigned int count)
{
 struct nfs_open_context *ctx = nfs_file_open_context(file);
 struct address_space *mapping = page_file_mapping(page);
 struct inode *inode = mapping->host;
 int status = 0;

 nfs_inc_stats(inode, NFSIOS_VFSUPDATEPAGE);

 dprintk("NFS:       nfs_updatepage(%pD2 %d@%lld)\n",
  file, count, (long long)(page_file_offset(page) + offset));

 if (!count)
  goto out;

 if (nfs_can_extend_write(file, page, inode)) {
  count = max(count + offset, nfs_page_length(page));
  offset = 0;
 }

 status = nfs_writepage_setup(ctx, page, offset, count);
 if (status < 0)
  nfs_set_pageerror(mapping);
 else
  __set_page_dirty_nobuffers(page);
out:
 dprintk("NFS:       nfs_updatepage returns %d (isize %lld)\n",
   status, (long long)i_size_read(inode));
 return status;
}
