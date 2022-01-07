
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_operations {scalar_t__ owner; } ;
struct file {void* private_data; int i_mapping; int f_mapping; } ;


 int ENODEV ;
 int ENOENT ;
 struct file* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct file*) ;
 int O_ACCMODE ;
 int O_NONBLOCK ;
 struct file* alloc_file_pseudo (struct file*,int ,char const*,int,struct file_operations const*) ;
 struct file* anon_inode_inode ;
 int anon_inode_mnt ;
 int ihold (struct file*) ;
 int iput (struct file*) ;
 int module_put (scalar_t__) ;
 int try_module_get (scalar_t__) ;

struct file *anon_inode_getfile(const char *name,
    const struct file_operations *fops,
    void *priv, int flags)
{
 struct file *file;

 if (IS_ERR(anon_inode_inode))
  return ERR_PTR(-ENODEV);

 if (fops->owner && !try_module_get(fops->owner))
  return ERR_PTR(-ENOENT);





 ihold(anon_inode_inode);
 file = alloc_file_pseudo(anon_inode_inode, anon_inode_mnt, name,
     flags & (O_ACCMODE | O_NONBLOCK), fops);
 if (IS_ERR(file))
  goto err;

 file->f_mapping = anon_inode_inode->i_mapping;

 file->private_data = priv;

 return file;

err:
 iput(anon_inode_inode);
 module_put(fops->owner);
 return file;
}
