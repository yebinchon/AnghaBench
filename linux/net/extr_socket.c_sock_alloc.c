
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct inode {int i_mode; int * i_op; int i_gid; int i_uid; int i_ino; } ;
struct TYPE_2__ {int mnt_sb; } ;


 struct socket* SOCKET_I (struct inode*) ;
 int S_IFSOCK ;
 int S_IRWXUGO ;
 int current_fsgid () ;
 int current_fsuid () ;
 int get_next_ino () ;
 struct inode* new_inode_pseudo (int ) ;
 TYPE_1__* sock_mnt ;
 int sockfs_inode_ops ;

struct socket *sock_alloc(void)
{
 struct inode *inode;
 struct socket *sock;

 inode = new_inode_pseudo(sock_mnt->mnt_sb);
 if (!inode)
  return ((void*)0);

 sock = SOCKET_I(inode);

 inode->i_ino = get_next_ino();
 inode->i_mode = S_IFSOCK | S_IRWXUGO;
 inode->i_uid = current_fsuid();
 inode->i_gid = current_fsgid();
 inode->i_op = &sockfs_inode_ops;

 return sock;
}
