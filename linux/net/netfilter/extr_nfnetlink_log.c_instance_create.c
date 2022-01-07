
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int u32 ;
struct user_namespace {int dummy; } ;
struct nfulnl_instance {int hlist; int copy_range; int copy_mode; int nlbufsiz; int flushtimeout; int qthreshold; int group_num; int peer_portid; struct user_namespace* peer_user_ns; int net; int timer; int use; int lock; } ;
struct nfnl_log_net {int instances_lock; int * instance_table; } ;
struct net {int dummy; } ;


 int EAGAIN ;
 int EEXIST ;
 int ENOMEM ;
 struct nfulnl_instance* ERR_PTR (int) ;
 int GFP_ATOMIC ;
 int INIT_HLIST_NODE (int *) ;
 int NFULNL_COPY_PACKET ;
 int NFULNL_COPY_RANGE_MAX ;
 int NFULNL_NLBUFSIZ_DEFAULT ;
 int NFULNL_QTHRESH_DEFAULT ;
 int NFULNL_TIMEOUT_DEFAULT ;
 int THIS_MODULE ;
 scalar_t__ __instance_lookup (struct nfnl_log_net*,int ) ;
 int get_net (struct net*) ;
 int hlist_add_head_rcu (int *,int *) ;
 size_t instance_hashfn (int ) ;
 int kfree (struct nfulnl_instance*) ;
 struct nfulnl_instance* kzalloc (int,int ) ;
 struct nfnl_log_net* nfnl_log_pernet (struct net*) ;
 int nfulnl_timer ;
 int refcount_set (int *,int) ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;
 int timer_setup (int *,int ,int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct nfulnl_instance *
instance_create(struct net *net, u_int16_t group_num,
  u32 portid, struct user_namespace *user_ns)
{
 struct nfulnl_instance *inst;
 struct nfnl_log_net *log = nfnl_log_pernet(net);
 int err;

 spin_lock_bh(&log->instances_lock);
 if (__instance_lookup(log, group_num)) {
  err = -EEXIST;
  goto out_unlock;
 }

 inst = kzalloc(sizeof(*inst), GFP_ATOMIC);
 if (!inst) {
  err = -ENOMEM;
  goto out_unlock;
 }

 if (!try_module_get(THIS_MODULE)) {
  kfree(inst);
  err = -EAGAIN;
  goto out_unlock;
 }

 INIT_HLIST_NODE(&inst->hlist);
 spin_lock_init(&inst->lock);

 refcount_set(&inst->use, 2);

 timer_setup(&inst->timer, nfulnl_timer, 0);

 inst->net = get_net(net);
 inst->peer_user_ns = user_ns;
 inst->peer_portid = portid;
 inst->group_num = group_num;

 inst->qthreshold = NFULNL_QTHRESH_DEFAULT;
 inst->flushtimeout = NFULNL_TIMEOUT_DEFAULT;
 inst->nlbufsiz = NFULNL_NLBUFSIZ_DEFAULT;
 inst->copy_mode = NFULNL_COPY_PACKET;
 inst->copy_range = NFULNL_COPY_RANGE_MAX;

 hlist_add_head_rcu(&inst->hlist,
         &log->instance_table[instance_hashfn(group_num)]);


 spin_unlock_bh(&log->instances_lock);

 return inst;

out_unlock:
 spin_unlock_bh(&log->instances_lock);
 return ERR_PTR(err);
}
