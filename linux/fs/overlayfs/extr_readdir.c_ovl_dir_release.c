
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovl_dir_file {scalar_t__ upperfile; scalar_t__ realfile; scalar_t__ cache; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int dentry; } ;
struct file {TYPE_1__ f_path; struct ovl_dir_file* private_data; } ;


 int fput (scalar_t__) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int kfree (struct ovl_dir_file*) ;
 int ovl_cache_put (struct ovl_dir_file*,int ) ;

__attribute__((used)) static int ovl_dir_release(struct inode *inode, struct file *file)
{
 struct ovl_dir_file *od = file->private_data;

 if (od->cache) {
  inode_lock(inode);
  ovl_cache_put(od, file->f_path.dentry);
  inode_unlock(inode);
 }
 fput(od->realfile);
 if (od->upperfile)
  fput(od->upperfile);
 kfree(od);

 return 0;
}
