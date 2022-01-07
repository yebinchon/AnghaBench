
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct tipc_member {int state; void* node; scalar_t__ bc_acked; void* instance; void* port; struct tipc_group* group; int deferredq; int small_win; int list; } ;
struct tipc_group {int dests; int member_cnt; scalar_t__ bc_snd_nxt; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int __skb_queue_head_init (int *) ;
 struct tipc_member* kzalloc (int,int ) ;
 int tipc_group_add_to_tree (struct tipc_group*,struct tipc_member*) ;
 int tipc_nlist_add (int *,void*) ;

__attribute__((used)) static struct tipc_member *tipc_group_create_member(struct tipc_group *grp,
          u32 node, u32 port,
          u32 instance, int state)
{
 struct tipc_member *m;

 m = kzalloc(sizeof(*m), GFP_ATOMIC);
 if (!m)
  return ((void*)0);
 INIT_LIST_HEAD(&m->list);
 INIT_LIST_HEAD(&m->small_win);
 __skb_queue_head_init(&m->deferredq);
 m->group = grp;
 m->node = node;
 m->port = port;
 m->instance = instance;
 m->bc_acked = grp->bc_snd_nxt - 1;
 grp->member_cnt++;
 tipc_group_add_to_tree(grp, m);
 tipc_nlist_add(&grp->dests, m->node);
 m->state = state;
 return m;
}
