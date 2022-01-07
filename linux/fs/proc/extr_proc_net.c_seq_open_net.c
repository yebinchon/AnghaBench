
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_net_private {struct net* net; } ;
struct net {int dummy; } ;
struct inode {int dummy; } ;
struct file {int f_mode; } ;
struct TYPE_2__ {unsigned int state_size; int seq_ops; int write; } ;


 int EACCES ;
 int ENOMEM ;
 int ENXIO ;
 int FMODE_WRITE ;
 TYPE_1__* PDE (struct inode*) ;
 int WARN_ON_ONCE (int) ;
 struct seq_net_private* __seq_open_private (struct file*,int ,unsigned int) ;
 struct net* get_proc_net (struct inode*) ;
 int put_net (struct net*) ;

__attribute__((used)) static int seq_open_net(struct inode *inode, struct file *file)
{
 unsigned int state_size = PDE(inode)->state_size;
 struct seq_net_private *p;
 struct net *net;

 WARN_ON_ONCE(state_size < sizeof(*p));

 if (file->f_mode & FMODE_WRITE && !PDE(inode)->write)
  return -EACCES;

 net = get_proc_net(inode);
 if (!net)
  return -ENXIO;

 p = __seq_open_private(file, PDE(inode)->seq_ops, state_size);
 if (!p) {
  put_net(net);
  return -ENOMEM;
 }



 return 0;
}
