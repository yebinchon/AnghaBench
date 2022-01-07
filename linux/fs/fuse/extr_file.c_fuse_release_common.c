
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock_owner; int release_flags; } ;
struct fuse_release_args {int inode; TYPE_1__ inarg; } ;
struct fuse_inode {int dummy; } ;
struct fuse_file {TYPE_2__* fc; scalar_t__ flock; struct fuse_release_args* release_args; } ;
struct file {int f_flags; struct fuse_file* private_data; } ;
typedef int fl_owner_t ;
struct TYPE_4__ {int destroy; } ;


 int FUSE_RELEASE ;
 int FUSE_RELEASEDIR ;
 int FUSE_RELEASE_FLOCK_UNLOCK ;
 int file_inode (struct file*) ;
 int fuse_file_put (struct fuse_file*,int ,int) ;
 int fuse_lock_owner_id (TYPE_2__*,int ) ;
 int fuse_prepare_release (struct fuse_inode*,struct fuse_file*,int ,int) ;
 struct fuse_inode* get_fuse_inode (int ) ;
 int igrab (int ) ;

void fuse_release_common(struct file *file, bool isdir)
{
 struct fuse_inode *fi = get_fuse_inode(file_inode(file));
 struct fuse_file *ff = file->private_data;
 struct fuse_release_args *ra = ff->release_args;
 int opcode = isdir ? FUSE_RELEASEDIR : FUSE_RELEASE;

 fuse_prepare_release(fi, ff, file->f_flags, opcode);

 if (ff->flock) {
  ra->inarg.release_flags |= FUSE_RELEASE_FLOCK_UNLOCK;
  ra->inarg.lock_owner = fuse_lock_owner_id(ff->fc,
         (fl_owner_t) file);
 }

 ra->inode = igrab(file_inode(file));
 fuse_file_put(ff, ff->fc->destroy, isdir);
}
