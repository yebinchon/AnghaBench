
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_2__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_4__ {int s_maxbytes; } ;
struct TYPE_3__ {struct inode* host; } ;


 int EINVAL ;
 int ENXIO ;





 int f2fs_seek_block (struct file*,int ,int) ;
 int generic_file_llseek_size (struct file*,int ,int,int ,int ) ;
 int i_size_read (struct inode*) ;

__attribute__((used)) static loff_t f2fs_llseek(struct file *file, loff_t offset, int whence)
{
 struct inode *inode = file->f_mapping->host;
 loff_t maxbytes = inode->i_sb->s_maxbytes;

 switch (whence) {
 case 128:
 case 132:
 case 130:
  return generic_file_llseek_size(file, offset, whence,
      maxbytes, i_size_read(inode));
 case 131:
 case 129:
  if (offset < 0)
   return -ENXIO;
  return f2fs_seek_block(file, offset, whence);
 }

 return -EINVAL;
}
