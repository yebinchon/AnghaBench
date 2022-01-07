
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_dirent {scalar_t__ namelen; int off; int name; } ;
struct file {int dummy; } ;
struct dir_context {int pos; } ;


 int EIO ;
 size_t FUSE_DIRENT_SIZE (struct fuse_dirent*) ;
 scalar_t__ FUSE_NAME_MAX ;
 size_t FUSE_NAME_OFFSET ;
 int fuse_emit (struct file*,struct dir_context*,struct fuse_dirent*) ;
 int * memchr (int ,char,scalar_t__) ;

__attribute__((used)) static int parse_dirfile(char *buf, size_t nbytes, struct file *file,
    struct dir_context *ctx)
{
 while (nbytes >= FUSE_NAME_OFFSET) {
  struct fuse_dirent *dirent = (struct fuse_dirent *) buf;
  size_t reclen = FUSE_DIRENT_SIZE(dirent);
  if (!dirent->namelen || dirent->namelen > FUSE_NAME_MAX)
   return -EIO;
  if (reclen > nbytes)
   break;
  if (memchr(dirent->name, '/', dirent->namelen) != ((void*)0))
   return -EIO;

  if (!fuse_emit(file, ctx, dirent))
   break;

  buf += reclen;
  nbytes -= reclen;
  ctx->pos = dirent->off;
 }

 return 0;
}
