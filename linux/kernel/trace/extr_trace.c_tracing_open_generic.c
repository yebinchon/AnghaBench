
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int private_data; } ;


 int tracing_check_open_get_tr (int *) ;

int tracing_open_generic(struct inode *inode, struct file *filp)
{
 int ret;

 ret = tracing_check_open_get_tr(((void*)0));
 if (ret)
  return ret;

 filp->private_data = inode->i_private;
 return 0;
}
