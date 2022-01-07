
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dummy; } ;
struct ovl_dir_file {struct file* upperfile; int is_upper; struct file* realfile; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; struct ovl_dir_file* private_data; } ;
struct dentry {int dummy; } ;
typedef int loff_t ;


 scalar_t__ IS_ERR (struct file*) ;
 int OVL_TYPE_UPPER (int ) ;
 int O_RDONLY ;
 int PTR_ERR (struct file*) ;
 struct file* READ_ONCE (struct file*) ;
 struct inode* file_inode (struct file*) ;
 int fput (struct file*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 struct file* ovl_path_open (struct path*,int ) ;
 int ovl_path_type (struct dentry*) ;
 int ovl_path_upper (struct dentry*,struct path*) ;
 int smp_store_release (struct file**,struct file*) ;
 int vfs_fsync_range (struct file*,int ,int ,int) ;

__attribute__((used)) static int ovl_dir_fsync(struct file *file, loff_t start, loff_t end,
    int datasync)
{
 struct ovl_dir_file *od = file->private_data;
 struct dentry *dentry = file->f_path.dentry;
 struct file *realfile = od->realfile;


 if (!OVL_TYPE_UPPER(ovl_path_type(dentry)))
  return 0;




 if (!od->is_upper) {
  struct inode *inode = file_inode(file);

  realfile = READ_ONCE(od->upperfile);
  if (!realfile) {
   struct path upperpath;

   ovl_path_upper(dentry, &upperpath);
   realfile = ovl_path_open(&upperpath, O_RDONLY);

   inode_lock(inode);
   if (!od->upperfile) {
    if (IS_ERR(realfile)) {
     inode_unlock(inode);
     return PTR_ERR(realfile);
    }
    smp_store_release(&od->upperfile, realfile);
   } else {

    if (!IS_ERR(realfile))
     fput(realfile);
    realfile = od->upperfile;
   }
   inode_unlock(inode);
  }
 }

 return vfs_fsync_range(realfile, start, end, datasync);
}
