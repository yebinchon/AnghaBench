
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_conn {scalar_t__ writeback_cache; } ;
struct file {int dummy; } ;


 int fuse_release_common (struct file*,int) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int write_inode_now (struct inode*,int) ;

__attribute__((used)) static int fuse_release(struct inode *inode, struct file *file)
{
 struct fuse_conn *fc = get_fuse_conn(inode);


 if (fc->writeback_cache)
  write_inode_now(inode, 1);

 fuse_release_common(file, 0);


 return 0;
}
