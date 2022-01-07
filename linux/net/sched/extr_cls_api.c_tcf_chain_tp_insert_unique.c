
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_proto {int dummy; } ;
struct tcf_chain_info {int dummy; } ;
struct tcf_chain {int filter_chain_lock; } ;


 int EAGAIN ;
 struct tcf_proto* ERR_PTR (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tcf_proto* tcf_chain_tp_find (struct tcf_chain*,struct tcf_chain_info*,int ,int ,int) ;
 int tcf_chain_tp_insert (struct tcf_chain*,struct tcf_chain_info*,struct tcf_proto*) ;
 int tcf_proto_destroy (struct tcf_proto*,int,int,int *) ;
 scalar_t__ tcf_proto_exists_destroying (struct tcf_chain*,struct tcf_proto*) ;

__attribute__((used)) static struct tcf_proto *tcf_chain_tp_insert_unique(struct tcf_chain *chain,
          struct tcf_proto *tp_new,
          u32 protocol, u32 prio,
          bool rtnl_held)
{
 struct tcf_chain_info chain_info;
 struct tcf_proto *tp;
 int err = 0;

 mutex_lock(&chain->filter_chain_lock);

 if (tcf_proto_exists_destroying(chain, tp_new)) {
  mutex_unlock(&chain->filter_chain_lock);
  tcf_proto_destroy(tp_new, rtnl_held, 0, ((void*)0));
  return ERR_PTR(-EAGAIN);
 }

 tp = tcf_chain_tp_find(chain, &chain_info,
          protocol, prio, 0);
 if (!tp)
  err = tcf_chain_tp_insert(chain, &chain_info, tp_new);
 mutex_unlock(&chain->filter_chain_lock);

 if (tp) {
  tcf_proto_destroy(tp_new, rtnl_held, 0, ((void*)0));
  tp_new = tp;
 } else if (err) {
  tcf_proto_destroy(tp_new, rtnl_held, 0, ((void*)0));
  tp_new = ERR_PTR(err);
 }

 return tp_new;
}
