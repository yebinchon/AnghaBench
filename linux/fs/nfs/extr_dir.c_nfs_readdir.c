
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct nfs_open_dir_context {scalar_t__ dir_cookie; } ;
struct inode {int dummy; } ;
struct file {int f_mapping; struct nfs_open_dir_context* private_data; } ;
struct dir_context {scalar_t__ pos; } ;
struct dentry {int dummy; } ;
struct TYPE_8__ {int plus; int eof; scalar_t__ page_index; scalar_t__* dir_cookie; int decode; struct dir_context* ctx; struct file* file; } ;
typedef TYPE_1__ nfs_readdir_descriptor_t ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int decode_dirent; } ;


 int EBADCOOKIE ;
 int ETOOSMALL ;
 int FILE ;
 int NFSIOS_VFSGETDENTS ;
 TYPE_7__* NFS_I (struct inode*) ;
 int NFS_INO_ADVISE_RDPLUS ;
 TYPE_6__* NFS_PROTO (struct inode*) ;
 int clear_bit (int ,int *) ;
 struct inode* d_inode (struct dentry*) ;
 int dfprintk (int ,char*,struct file*,int) ;
 struct dentry* file_dentry (struct file*) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ nfs_attribute_cache_expired (struct inode*) ;
 int nfs_do_filldir (TYPE_1__*) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_revalidate_mapping (struct inode*,int ) ;
 int nfs_use_readdirplus (struct inode*,struct dir_context*) ;
 int nfs_zap_caches (struct inode*) ;
 int readdir_search_pagecache (TYPE_1__*) ;
 int uncached_readdir (TYPE_1__*) ;

__attribute__((used)) static int nfs_readdir(struct file *file, struct dir_context *ctx)
{
 struct dentry *dentry = file_dentry(file);
 struct inode *inode = d_inode(dentry);
 nfs_readdir_descriptor_t my_desc,
   *desc = &my_desc;
 struct nfs_open_dir_context *dir_ctx = file->private_data;
 int res = 0;

 dfprintk(FILE, "NFS: readdir(%pD2) starting at cookie %llu\n",
   file, (long long)ctx->pos);
 nfs_inc_stats(inode, NFSIOS_VFSGETDENTS);







 memset(desc, 0, sizeof(*desc));

 desc->file = file;
 desc->ctx = ctx;
 desc->dir_cookie = &dir_ctx->dir_cookie;
 desc->decode = NFS_PROTO(inode)->decode_dirent;
 desc->plus = nfs_use_readdirplus(inode, ctx);

 if (ctx->pos == 0 || nfs_attribute_cache_expired(inode))
  res = nfs_revalidate_mapping(inode, file->f_mapping);
 if (res < 0)
  goto out;

 do {
  res = readdir_search_pagecache(desc);

  if (res == -EBADCOOKIE) {
   res = 0;

   if (*desc->dir_cookie && !desc->eof) {

    res = uncached_readdir(desc);
    if (res == 0)
     continue;
   }
   break;
  }
  if (res == -ETOOSMALL && desc->plus) {
   clear_bit(NFS_INO_ADVISE_RDPLUS, &NFS_I(inode)->flags);
   nfs_zap_caches(inode);
   desc->page_index = 0;
   desc->plus = 0;
   desc->eof = 0;
   continue;
  }
  if (res < 0)
   break;

  res = nfs_do_filldir(desc);
  if (res < 0)
   break;
 } while (!desc->eof);
out:
 if (res > 0)
  res = 0;
 dfprintk(FILE, "NFS: readdir(%pD2) returns %d\n", file, res);
 return res;
}
