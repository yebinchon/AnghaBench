
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int len; } ;
struct net_generic {void** ptr; TYPE_1__ s; } ;
struct net {int gen; } ;
struct TYPE_4__ {int rcu; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 unsigned int MIN_PERNET_OPS_ID ;
 int kfree_rcu (struct net_generic*,int ) ;
 int lockdep_is_held (int *) ;
 int memcpy (void**,void**,unsigned int) ;
 struct net_generic* net_alloc_generic () ;
 int pernet_ops_rwsem ;
 int rcu_assign_pointer (int ,struct net_generic*) ;
 struct net_generic* rcu_dereference_protected (int ,int ) ;
 TYPE_2__ s ;

__attribute__((used)) static int net_assign_generic(struct net *net, unsigned int id, void *data)
{
 struct net_generic *ng, *old_ng;

 BUG_ON(id < MIN_PERNET_OPS_ID);

 old_ng = rcu_dereference_protected(net->gen,
        lockdep_is_held(&pernet_ops_rwsem));
 if (old_ng->s.len > id) {
  old_ng->ptr[id] = data;
  return 0;
 }

 ng = net_alloc_generic();
 if (ng == ((void*)0))
  return -ENOMEM;
 memcpy(&ng->ptr[MIN_PERNET_OPS_ID], &old_ng->ptr[MIN_PERNET_OPS_ID],
        (old_ng->s.len - MIN_PERNET_OPS_ID) * sizeof(void *));
 ng->ptr[id] = data;

 rcu_assign_pointer(net->gen, ng);
 kfree_rcu(old_ng, s.rcu);
 return 0;
}
