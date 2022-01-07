
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int single_show; } ;
struct net {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ENXIO ;
 struct proc_dir_entry* PDE (struct inode*) ;
 struct net* get_proc_net (struct inode*) ;
 int put_net (struct net*) ;
 int single_open (struct file*,int ,struct net*) ;

__attribute__((used)) static int single_open_net(struct inode *inode, struct file *file)
{
 struct proc_dir_entry *de = PDE(inode);
 struct net *net;
 int err;

 net = get_proc_net(inode);
 if (!net)
  return -ENXIO;

 err = single_open(file, de->single_show, net);
 if (err)
  put_net(net);
 return err;
}
