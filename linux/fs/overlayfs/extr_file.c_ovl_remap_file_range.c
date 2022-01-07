
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;
typedef enum ovl_copyop { ____Placeholder_ovl_copyop } ovl_copyop ;


 int EINVAL ;
 int EPERM ;
 int OVL_CLONE ;
 int OVL_DEDUPE ;
 unsigned int REMAP_FILE_ADVISORY ;
 unsigned int REMAP_FILE_DEDUP ;
 int file_inode (struct file*) ;
 int ovl_copyfile (struct file*,int ,struct file*,int ,int ,unsigned int,int) ;
 int ovl_inode_upper (int ) ;

__attribute__((used)) static loff_t ovl_remap_file_range(struct file *file_in, loff_t pos_in,
       struct file *file_out, loff_t pos_out,
       loff_t len, unsigned int remap_flags)
{
 enum ovl_copyop op;

 if (remap_flags & ~(REMAP_FILE_DEDUP | REMAP_FILE_ADVISORY))
  return -EINVAL;

 if (remap_flags & REMAP_FILE_DEDUP)
  op = OVL_DEDUPE;
 else
  op = OVL_CLONE;





 if (op == OVL_DEDUPE &&
     (!ovl_inode_upper(file_inode(file_in)) ||
      !ovl_inode_upper(file_inode(file_out))))
  return -EPERM;

 return ovl_copyfile(file_in, pos_in, file_out, pos_out, len,
       remap_flags, op);
}
