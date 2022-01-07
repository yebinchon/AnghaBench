
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int proc_net; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 struct net* get_proc_task_net (struct inode*) ;
 struct dentry* proc_lookup_de (struct inode*,struct dentry*,int ) ;
 int put_net (struct net*) ;

__attribute__((used)) static struct dentry *proc_tgid_net_lookup(struct inode *dir,
  struct dentry *dentry, unsigned int flags)
{
 struct dentry *de;
 struct net *net;

 de = ERR_PTR(-ENOENT);
 net = get_proc_task_net(dir);
 if (net != ((void*)0)) {
  de = proc_lookup_de(dir, dentry, net->proc_net);
  put_net(net);
 }
 return de;
}
