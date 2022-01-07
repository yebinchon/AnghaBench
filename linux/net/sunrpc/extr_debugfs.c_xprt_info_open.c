
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int dummy; } ;
struct inode {struct rpc_xprt* i_private; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int single_open (struct file*,int ,struct rpc_xprt*) ;
 int single_release (struct inode*,struct file*) ;
 int xprt_get (struct rpc_xprt*) ;
 int xprt_info_show ;

__attribute__((used)) static int
xprt_info_open(struct inode *inode, struct file *filp)
{
 int ret;
 struct rpc_xprt *xprt = inode->i_private;

 ret = single_open(filp, xprt_info_show, xprt);

 if (!ret) {
  if (!xprt_get(xprt)) {
   single_release(inode, filp);
   ret = -EINVAL;
  }
 }
 return ret;
}
