
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct iattr {int ia_mode; int ia_valid; } ;
struct dentry {int dummy; } ;
struct TYPE_6__ {int (* symlink ) (struct inode*,struct dentry*,struct page*,unsigned int,struct iattr*) ;} ;
struct TYPE_5__ {int i_mapping; } ;
struct TYPE_4__ {int s_id; } ;


 int ATTR_MODE ;
 int ENAMETOOLONG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GFP_USER ;
 TYPE_3__* NFS_PROTO (struct inode*) ;
 unsigned int PAGE_SIZE ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 int SetPageUptodate (struct page*) ;
 int VFS ;
 int __free_page (struct page*) ;
 int add_to_page_cache_lru (struct page*,int ,int ,int ) ;
 struct page* alloc_page (int ) ;
 int d_drop (struct dentry*) ;
 TYPE_2__* d_inode (struct dentry*) ;
 int dfprintk (int ,char*,int ,int ,struct dentry*,char const*,...) ;
 int memcpy (char*,char const*,unsigned int) ;
 int memset (char*,int ,unsigned int) ;
 char* page_address (struct page*) ;
 int put_page (struct page*) ;
 unsigned int strlen (char const*) ;
 int stub1 (struct inode*,struct dentry*,struct page*,unsigned int,struct iattr*) ;
 int trace_nfs_symlink_enter (struct inode*,struct dentry*) ;
 int trace_nfs_symlink_exit (struct inode*,struct dentry*,int) ;
 int unlock_page (struct page*) ;

int nfs_symlink(struct inode *dir, struct dentry *dentry, const char *symname)
{
 struct page *page;
 char *kaddr;
 struct iattr attr;
 unsigned int pathlen = strlen(symname);
 int error;

 dfprintk(VFS, "NFS: symlink(%s/%lu, %pd, %s)\n", dir->i_sb->s_id,
  dir->i_ino, dentry, symname);

 if (pathlen > PAGE_SIZE)
  return -ENAMETOOLONG;

 attr.ia_mode = S_IFLNK | S_IRWXUGO;
 attr.ia_valid = ATTR_MODE;

 page = alloc_page(GFP_USER);
 if (!page)
  return -ENOMEM;

 kaddr = page_address(page);
 memcpy(kaddr, symname, pathlen);
 if (pathlen < PAGE_SIZE)
  memset(kaddr + pathlen, 0, PAGE_SIZE - pathlen);

 trace_nfs_symlink_enter(dir, dentry);
 error = NFS_PROTO(dir)->symlink(dir, dentry, page, pathlen, &attr);
 trace_nfs_symlink_exit(dir, dentry, error);
 if (error != 0) {
  dfprintk(VFS, "NFS: symlink(%s/%lu, %pd, %s) error %d\n",
   dir->i_sb->s_id, dir->i_ino,
   dentry, symname, error);
  d_drop(dentry);
  __free_page(page);
  return error;
 }





 if (!add_to_page_cache_lru(page, d_inode(dentry)->i_mapping, 0,
       GFP_KERNEL)) {
  SetPageUptodate(page);
  unlock_page(page);




  put_page(page);
 } else
  __free_page(page);

 return 0;
}
