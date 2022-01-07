
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union bpf_attr {int dummy; } bpf_attr ;
struct net {int flow_dissector_prog; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_4__ {TYPE_1__* nsproxy; } ;
struct TYPE_3__ {struct net* net_ns; } ;


 int ENOENT ;
 int RCU_INIT_POINTER (int ,int *) ;
 int bpf_prog_put (struct bpf_prog*) ;
 TYPE_2__* current ;
 int flow_dissector_mutex ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bpf_prog* rcu_dereference_protected (int ,int ) ;

int skb_flow_dissector_bpf_prog_detach(const union bpf_attr *attr)
{
 struct bpf_prog *attached;
 struct net *net;

 net = current->nsproxy->net_ns;
 mutex_lock(&flow_dissector_mutex);
 attached = rcu_dereference_protected(net->flow_dissector_prog,
          lockdep_is_held(&flow_dissector_mutex));
 if (!attached) {
  mutex_unlock(&flow_dissector_mutex);
  return -ENOENT;
 }
 RCU_INIT_POINTER(net->flow_dissector_prog, ((void*)0));
 bpf_prog_put(attached);
 mutex_unlock(&flow_dissector_mutex);
 return 0;
}
