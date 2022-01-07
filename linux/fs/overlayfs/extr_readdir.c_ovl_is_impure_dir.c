
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovl_dir_file {scalar_t__ is_upper; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int dentry; } ;
struct file {TYPE_1__ f_path; struct ovl_dir_file* private_data; } ;


 int OVL_IMPURE ;
 struct inode* d_inode (int ) ;
 scalar_t__ ovl_test_flag (int ,struct inode*) ;

__attribute__((used)) static bool ovl_is_impure_dir(struct file *file)
{
 struct ovl_dir_file *od = file->private_data;
 struct inode *dir = d_inode(file->f_path.dentry);







 return od->is_upper && ovl_test_flag(OVL_IMPURE, dir);

}
