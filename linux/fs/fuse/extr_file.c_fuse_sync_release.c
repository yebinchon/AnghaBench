
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_inode {int dummy; } ;
struct fuse_file {int count; } ;


 int FUSE_RELEASE ;
 int WARN_ON (int) ;
 int fuse_file_put (struct fuse_file*,int,int) ;
 int fuse_prepare_release (struct fuse_inode*,struct fuse_file*,int,int ) ;
 int refcount_read (int *) ;

void fuse_sync_release(struct fuse_inode *fi, struct fuse_file *ff, int flags)
{
 WARN_ON(refcount_read(&ff->count) > 1);
 fuse_prepare_release(fi, ff, flags, FUSE_RELEASE);




 fuse_file_put(ff, 1, 0);
}
