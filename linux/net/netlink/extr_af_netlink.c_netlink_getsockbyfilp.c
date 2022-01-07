
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_family; } ;
struct inode {int i_mode; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct sock* sk; } ;


 scalar_t__ AF_NETLINK ;
 int EINVAL ;
 int ENOTSOCK ;
 struct sock* ERR_PTR (int ) ;
 TYPE_1__* SOCKET_I (struct inode*) ;
 int S_ISSOCK (int ) ;
 struct inode* file_inode (struct file*) ;
 int sock_hold (struct sock*) ;

struct sock *netlink_getsockbyfilp(struct file *filp)
{
 struct inode *inode = file_inode(filp);
 struct sock *sock;

 if (!S_ISSOCK(inode->i_mode))
  return ERR_PTR(-ENOTSOCK);

 sock = SOCKET_I(inode)->sk;
 if (sock->sk_family != AF_NETLINK)
  return ERR_PTR(-EINVAL);

 sock_hold(sock);
 return sock;
}
