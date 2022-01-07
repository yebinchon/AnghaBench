
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int u32 ;
struct nfqnl_instance {int hlist; int queue_list; int lock; int copy_mode; int copy_range; int queue_maxlen; int peer_portid; int queue_num; } ;
struct nfnl_queue_net {int instances_lock; int * instance_table; } ;


 int EAGAIN ;
 int EEXIST ;
 int ENOMEM ;
 struct nfqnl_instance* ERR_PTR (int) ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int NFQNL_COPY_NONE ;
 int NFQNL_MAX_COPY_RANGE ;
 int NFQNL_QMAX_DEFAULT ;
 int THIS_MODULE ;
 int hlist_add_head_rcu (int *,int *) ;
 unsigned int instance_hashfn (int ) ;
 scalar_t__ instance_lookup (struct nfnl_queue_net*,int ) ;
 int kfree (struct nfqnl_instance*) ;
 struct nfqnl_instance* kzalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct nfqnl_instance *
instance_create(struct nfnl_queue_net *q, u_int16_t queue_num, u32 portid)
{
 struct nfqnl_instance *inst;
 unsigned int h;
 int err;

 spin_lock(&q->instances_lock);
 if (instance_lookup(q, queue_num)) {
  err = -EEXIST;
  goto out_unlock;
 }

 inst = kzalloc(sizeof(*inst), GFP_ATOMIC);
 if (!inst) {
  err = -ENOMEM;
  goto out_unlock;
 }

 inst->queue_num = queue_num;
 inst->peer_portid = portid;
 inst->queue_maxlen = NFQNL_QMAX_DEFAULT;
 inst->copy_range = NFQNL_MAX_COPY_RANGE;
 inst->copy_mode = NFQNL_COPY_NONE;
 spin_lock_init(&inst->lock);
 INIT_LIST_HEAD(&inst->queue_list);

 if (!try_module_get(THIS_MODULE)) {
  err = -EAGAIN;
  goto out_free;
 }

 h = instance_hashfn(queue_num);
 hlist_add_head_rcu(&inst->hlist, &q->instance_table[h]);

 spin_unlock(&q->instances_lock);

 return inst;

out_free:
 kfree(inst);
out_unlock:
 spin_unlock(&q->instances_lock);
 return ERR_PTR(err);
}
