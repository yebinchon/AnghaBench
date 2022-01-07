
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct page {int dummy; } ;
struct nfs_open_dir_context {struct cred* cred; } ;
struct nfs_entry {int cookie; } ;
struct inode {int dummy; } ;
struct file {struct nfs_open_dir_context* private_data; } ;
struct cred {int dummy; } ;
struct TYPE_6__ {int plus; unsigned long timestamp; unsigned long gencount; } ;
typedef TYPE_1__ nfs_readdir_descriptor_t ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int (* readdir ) (int ,struct cred const*,int ,struct page**,int ,int) ;} ;
struct TYPE_7__ {int caps; int dtsize; } ;


 int ENOTSUPP ;
 int NFS_CAP_READDIRPLUS ;
 TYPE_5__* NFS_I (struct inode*) ;
 int NFS_INO_ADVISE_RDPLUS ;
 TYPE_4__* NFS_PROTO (struct inode*) ;
 TYPE_3__* NFS_SERVER (struct inode*) ;
 int clear_bit (int ,int *) ;
 int file_dentry (struct file*) ;
 unsigned long jiffies ;
 unsigned long nfs_inc_attr_generation_counter () ;
 int stub1 (int ,struct cred const*,int ,struct page**,int ,int) ;

__attribute__((used)) static
int nfs_readdir_xdr_filler(struct page **pages, nfs_readdir_descriptor_t *desc,
   struct nfs_entry *entry, struct file *file, struct inode *inode)
{
 struct nfs_open_dir_context *ctx = file->private_data;
 const struct cred *cred = ctx->cred;
 unsigned long timestamp, gencount;
 int error;

 again:
 timestamp = jiffies;
 gencount = nfs_inc_attr_generation_counter();
 error = NFS_PROTO(inode)->readdir(file_dentry(file), cred, entry->cookie, pages,
       NFS_SERVER(inode)->dtsize, desc->plus);
 if (error < 0) {

  if (error == -ENOTSUPP && desc->plus) {
   NFS_SERVER(inode)->caps &= ~NFS_CAP_READDIRPLUS;
   clear_bit(NFS_INO_ADVISE_RDPLUS, &NFS_I(inode)->flags);
   desc->plus = 0;
   goto again;
  }
  goto error;
 }
 desc->timestamp = timestamp;
 desc->gencount = gencount;
error:
 return error;
}
