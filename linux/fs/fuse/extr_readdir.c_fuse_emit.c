
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_file {int open_flags; } ;
struct fuse_dirent {int type; int ino; int namelen; int name; } ;
struct file {struct fuse_file* private_data; } ;
struct dir_context {int pos; } ;


 int FOPEN_CACHE_DIR ;
 int dir_emit (struct dir_context*,int ,int ,int ,int ) ;
 int fuse_add_dirent_to_cache (struct file*,struct fuse_dirent*,int ) ;

__attribute__((used)) static bool fuse_emit(struct file *file, struct dir_context *ctx,
        struct fuse_dirent *dirent)
{
 struct fuse_file *ff = file->private_data;

 if (ff->open_flags & FOPEN_CACHE_DIR)
  fuse_add_dirent_to_cache(file, dirent, ctx->pos);

 return dir_emit(ctx, dirent->name, dirent->namelen, dirent->ino,
   dirent->type);
}
