
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct path {int dentry; } ;
struct net {TYPE_1__* proc_net; } ;
struct kstat {int nlink; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int nlink; } ;


 struct inode* d_inode (int ) ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 struct net* get_proc_task_net (struct inode*) ;
 int put_net (struct net*) ;

__attribute__((used)) static int proc_tgid_net_getattr(const struct path *path, struct kstat *stat,
     u32 request_mask, unsigned int query_flags)
{
 struct inode *inode = d_inode(path->dentry);
 struct net *net;

 net = get_proc_task_net(inode);

 generic_fillattr(inode, stat);

 if (net != ((void*)0)) {
  stat->nlink = net->proc_net->nlink;
  put_net(net);
 }

 return 0;
}
