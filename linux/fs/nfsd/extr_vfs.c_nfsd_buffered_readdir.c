
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int actor; } ;
struct readdir_data {void* dirent; int used; scalar_t__ full; TYPE_1__ ctx; } ;
struct readdir_cd {scalar_t__ err; } ;
struct file {int dummy; } ;
struct buffered_dirent {scalar_t__ namlen; int d_type; int ino; int offset; int name; } ;
typedef scalar_t__ (* nfsd_filldir_t ) (struct readdir_cd*,int ,scalar_t__,int ,int ,int ) ;
typedef int loff_t ;
typedef scalar_t__ __be32 ;


 unsigned int ALIGN (scalar_t__,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SEEK_CUR ;
 scalar_t__ __get_free_page (int ) ;
 int free_page (unsigned long) ;
 int iterate_dir (struct file*,TYPE_1__*) ;
 scalar_t__ nfs_ok ;
 int nfsd_buffered_filldir ;
 scalar_t__ nfserr_eof ;
 scalar_t__ nfserrno (int) ;
 int vfs_llseek (struct file*,int ,int ) ;

__attribute__((used)) static __be32 nfsd_buffered_readdir(struct file *file, nfsd_filldir_t func,
        struct readdir_cd *cdp, loff_t *offsetp)
{
 struct buffered_dirent *de;
 int host_err;
 int size;
 loff_t offset;
 struct readdir_data buf = {
  .ctx.actor = nfsd_buffered_filldir,
  .dirent = (void *)__get_free_page(GFP_KERNEL)
 };

 if (!buf.dirent)
  return nfserrno(-ENOMEM);

 offset = *offsetp;

 while (1) {
  unsigned int reclen;

  cdp->err = nfserr_eof;
  buf.used = 0;
  buf.full = 0;

  host_err = iterate_dir(file, &buf.ctx);
  if (buf.full)
   host_err = 0;

  if (host_err < 0)
   break;

  size = buf.used;

  if (!size)
   break;

  de = (struct buffered_dirent *)buf.dirent;
  while (size > 0) {
   offset = de->offset;

   if (func(cdp, de->name, de->namlen, de->offset,
     de->ino, de->d_type))
    break;

   if (cdp->err != nfs_ok)
    break;

   reclen = ALIGN(sizeof(*de) + de->namlen,
           sizeof(u64));
   size -= reclen;
   de = (struct buffered_dirent *)((char *)de + reclen);
  }
  if (size > 0)
   break;

  offset = vfs_llseek(file, 0, SEEK_CUR);
 }

 free_page((unsigned long)(buf.dirent));

 if (host_err)
  return nfserrno(host_err);

 *offsetp = offset;
 return cdp->err;
}
