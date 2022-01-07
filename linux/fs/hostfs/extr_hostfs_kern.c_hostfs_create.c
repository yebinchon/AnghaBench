
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int fd; int mode; } ;


 int ENOMEM ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 TYPE_1__* HOSTFS_I (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int __putname (char*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 char* dentry_name (struct dentry*) ;
 int file_create (char*,int) ;
 struct inode* hostfs_iget (int ) ;
 int iput (struct inode*) ;
 int read_name (struct inode*,char*) ;

__attribute__((used)) static int hostfs_create(struct inode *dir, struct dentry *dentry, umode_t mode,
    bool excl)
{
 struct inode *inode;
 char *name;
 int error, fd;

 inode = hostfs_iget(dir->i_sb);
 if (IS_ERR(inode)) {
  error = PTR_ERR(inode);
  goto out;
 }

 error = -ENOMEM;
 name = dentry_name(dentry);
 if (name == ((void*)0))
  goto out_put;

 fd = file_create(name, mode & 0777);
 if (fd < 0)
  error = fd;
 else
  error = read_name(inode, name);

 __putname(name);
 if (error)
  goto out_put;

 HOSTFS_I(inode)->fd = fd;
 HOSTFS_I(inode)->mode = FMODE_READ | FMODE_WRITE;
 d_instantiate(dentry, inode);
 return 0;

 out_put:
 iput(inode);
 out:
 return error;
}
