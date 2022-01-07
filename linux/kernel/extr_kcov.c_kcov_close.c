
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int private_data; } ;


 int kcov_put (int ) ;

__attribute__((used)) static int kcov_close(struct inode *inode, struct file *filep)
{
 kcov_put(filep->private_data);
 return 0;
}
