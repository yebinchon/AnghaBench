
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int dummy; } ;
struct inode {struct rpc_xprt* i_private; } ;
struct file {int dummy; } ;


 int single_release (struct inode*,struct file*) ;
 int xprt_put (struct rpc_xprt*) ;

__attribute__((used)) static int
xprt_info_release(struct inode *inode, struct file *filp)
{
 struct rpc_xprt *xprt = inode->i_private;

 xprt_put(xprt);
 return single_release(inode, filp);
}
