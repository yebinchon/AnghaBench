
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int private_data; } ;


 int EACCES ;
 int ENOENT ;
 int __aa_get_loaddata (int ) ;
 int policy_view_capable (int *) ;

__attribute__((used)) static int rawdata_open(struct inode *inode, struct file *file)
{
 if (!policy_view_capable(((void*)0)))
  return -EACCES;
 file->private_data = __aa_get_loaddata(inode->i_private);
 if (!file->private_data)

  return -ENOENT;

 return 0;
}
