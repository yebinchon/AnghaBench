
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int SOCKET_I (struct inode*) ;
 int __sock_release (int ,struct inode*) ;

__attribute__((used)) static int sock_close(struct inode *inode, struct file *filp)
{
 __sock_release(SOCKET_I(inode), inode);
 return 0;
}
