
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;


 int free_page (unsigned long) ;

int simple_transaction_release(struct inode *inode, struct file *file)
{
 free_page((unsigned long)file->private_data);
 return 0;
}
