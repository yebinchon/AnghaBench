
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; } ;
struct inode {int i_mode; } ;
struct block_device {int dummy; } ;


 int EACCES ;
 int EINVAL ;
 int ENOMEM ;
 int ENOTBLK ;
 struct block_device* ERR_PTR (int) ;
 int LOOKUP_FOLLOW ;
 int S_ISBLK (int ) ;
 struct block_device* bd_acquire (struct inode*) ;
 struct inode* d_backing_inode (int ) ;
 int kern_path (char const*,int ,struct path*) ;
 int may_open_dev (struct path*) ;
 int path_put (struct path*) ;

struct block_device *lookup_bdev(const char *pathname)
{
 struct block_device *bdev;
 struct inode *inode;
 struct path path;
 int error;

 if (!pathname || !*pathname)
  return ERR_PTR(-EINVAL);

 error = kern_path(pathname, LOOKUP_FOLLOW, &path);
 if (error)
  return ERR_PTR(error);

 inode = d_backing_inode(path.dentry);
 error = -ENOTBLK;
 if (!S_ISBLK(inode->i_mode))
  goto fail;
 error = -EACCES;
 if (!may_open_dev(&path))
  goto fail;
 error = -ENOMEM;
 bdev = bd_acquire(inode);
 if (!bdev)
  goto fail;
out:
 path_put(&path);
 return bdev;
fail:
 bdev = ERR_PTR(error);
 goto out;
}
