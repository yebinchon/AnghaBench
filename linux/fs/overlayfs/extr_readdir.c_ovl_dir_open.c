
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dummy; } ;
struct ovl_dir_file {int is_upper; int is_real; struct file* realfile; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int dentry; } ;
struct file {struct ovl_dir_file* private_data; TYPE_1__ f_path; int f_flags; } ;
typedef enum ovl_path_type { ____Placeholder_ovl_path_type } ovl_path_type ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct file*) ;
 int OVL_TYPE_UPPER (int) ;
 int PTR_ERR (struct file*) ;
 int kfree (struct ovl_dir_file*) ;
 struct ovl_dir_file* kzalloc (int,int ) ;
 int ovl_dir_is_real (int ) ;
 struct file* ovl_path_open (struct path*,int ) ;
 int ovl_path_real (int ,struct path*) ;

__attribute__((used)) static int ovl_dir_open(struct inode *inode, struct file *file)
{
 struct path realpath;
 struct file *realfile;
 struct ovl_dir_file *od;
 enum ovl_path_type type;

 od = kzalloc(sizeof(struct ovl_dir_file), GFP_KERNEL);
 if (!od)
  return -ENOMEM;

 type = ovl_path_real(file->f_path.dentry, &realpath);
 realfile = ovl_path_open(&realpath, file->f_flags);
 if (IS_ERR(realfile)) {
  kfree(od);
  return PTR_ERR(realfile);
 }
 od->realfile = realfile;
 od->is_real = ovl_dir_is_real(file->f_path.dentry);
 od->is_upper = OVL_TYPE_UPPER(type);
 file->private_data = od;

 return 0;
}
