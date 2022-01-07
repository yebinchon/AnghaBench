
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunrpc_net {int pipe_version; int pipe_users; } ;
struct net {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct net* s_fs_info; } ;


 int EBUSY ;
 int atomic_inc (int *) ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 int pipe_version_lock ;
 int pipe_version_rpc_waitqueue ;
 int pipe_version_waitqueue ;
 int rpc_wake_up (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sunrpc_net_id ;
 int wake_up (int *) ;

__attribute__((used)) static int gss_pipe_open(struct inode *inode, int new_version)
{
 struct net *net = inode->i_sb->s_fs_info;
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);
 int ret = 0;

 spin_lock(&pipe_version_lock);
 if (sn->pipe_version < 0) {

  sn->pipe_version = new_version;
  rpc_wake_up(&pipe_version_rpc_waitqueue);
  wake_up(&pipe_version_waitqueue);
 } else if (sn->pipe_version != new_version) {

  ret = -EBUSY;
  goto out;
 }
 atomic_inc(&sn->pipe_users);
out:
 spin_unlock(&pipe_version_lock);
 return ret;

}
