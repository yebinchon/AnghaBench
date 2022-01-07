
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int private_data; } ;


 int aa_put_loaddata (int ) ;

__attribute__((used)) static int rawdata_release(struct inode *inode, struct file *file)
{
 aa_put_loaddata(file->private_data);

 return 0;
}
