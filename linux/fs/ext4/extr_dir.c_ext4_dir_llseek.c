
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {scalar_t__ f_version; TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int ext4_get_htree_eof (struct file*) ;
 int ext4_llseek (struct file*,int ,int) ;
 int generic_file_llseek_size (struct file*,int ,int,int ,int ) ;
 scalar_t__ inode_peek_iversion (struct inode*) ;
 int is_dx_dir (struct inode*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static loff_t ext4_dir_llseek(struct file *file, loff_t offset, int whence)
{
 struct inode *inode = file->f_mapping->host;
 int dx_dir = is_dx_dir(inode);
 loff_t ret, htree_max = ext4_get_htree_eof(file);

 if (likely(dx_dir))
  ret = generic_file_llseek_size(file, offset, whence,
          htree_max, htree_max);
 else
  ret = ext4_llseek(file, offset, whence);
 file->f_version = inode_peek_iversion(inode) - 1;
 return ret;
}
