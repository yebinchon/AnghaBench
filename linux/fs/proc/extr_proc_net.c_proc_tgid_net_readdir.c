
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int proc_net; } ;
struct file {int dummy; } ;
struct dir_context {int dummy; } ;


 int EINVAL ;
 int file_inode (struct file*) ;
 struct net* get_proc_task_net (int ) ;
 int proc_readdir_de (struct file*,struct dir_context*,int ) ;
 int put_net (struct net*) ;

__attribute__((used)) static int proc_tgid_net_readdir(struct file *file, struct dir_context *ctx)
{
 int ret;
 struct net *net;

 ret = -EINVAL;
 net = get_proc_task_net(file_inode(file));
 if (net != ((void*)0)) {
  ret = proc_readdir_de(file, ctx, net->proc_net);
  put_net(net);
 }
 return ret;
}
