
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int private_data; } ;


 int tomoyo_close_control (int ) ;

__attribute__((used)) static int tomoyo_release(struct inode *inode, struct file *file)
{
 tomoyo_close_control(file->private_data);
 return 0;
}
