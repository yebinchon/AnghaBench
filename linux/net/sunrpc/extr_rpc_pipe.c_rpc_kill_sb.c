
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {struct net* s_fs_info; } ;
struct sunrpc_net {int pipefs_sb_lock; struct super_block* pipefs_sb; } ;
struct TYPE_2__ {int inum; } ;
struct net {TYPE_1__ ns; } ;


 int NET_NAME (struct net*) ;
 int RPC_PIPEFS_UMOUNT ;
 int blocking_notifier_call_chain (int *,int ,struct super_block*) ;
 int dprintk (char*,int ,int ) ;
 int kill_litter_super (struct super_block*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 int put_net (struct net*) ;
 int rpc_pipefs_notifier_list ;
 int sunrpc_net_id ;

__attribute__((used)) static void rpc_kill_sb(struct super_block *sb)
{
 struct net *net = sb->s_fs_info;
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);

 mutex_lock(&sn->pipefs_sb_lock);
 if (sn->pipefs_sb != sb) {
  mutex_unlock(&sn->pipefs_sb_lock);
  goto out;
 }
 sn->pipefs_sb = ((void*)0);
 dprintk("RPC:       sending pipefs UMOUNT notification for net %x%s\n",
  net->ns.inum, NET_NAME(net));
 blocking_notifier_call_chain(&rpc_pipefs_notifier_list,
        RPC_PIPEFS_UMOUNT,
        sb);
 mutex_unlock(&sn->pipefs_sb_lock);
out:
 kill_litter_super(sb);
 put_net(net);
}
