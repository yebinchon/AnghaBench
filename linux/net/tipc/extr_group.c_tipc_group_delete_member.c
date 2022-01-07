
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_member {int node; int small_win; int list; int bc_acked; int tree_node; } ;
struct tipc_group {int dests; scalar_t__ bc_ackers; scalar_t__ bc_snd_nxt; int member_cnt; int members; } ;


 int kfree (struct tipc_member*) ;
 scalar_t__ less (int ,scalar_t__) ;
 int list_del_init (int *) ;
 int rb_erase (int *,int *) ;
 int tipc_group_decr_active (struct tipc_group*,struct tipc_member*) ;
 int tipc_group_find_node (struct tipc_group*,int ) ;
 int tipc_nlist_del (int *,int ) ;

__attribute__((used)) static void tipc_group_delete_member(struct tipc_group *grp,
         struct tipc_member *m)
{
 rb_erase(&m->tree_node, &grp->members);
 grp->member_cnt--;


 if (grp->bc_ackers && less(m->bc_acked, grp->bc_snd_nxt - 1))
  grp->bc_ackers--;

 list_del_init(&m->list);
 list_del_init(&m->small_win);
 tipc_group_decr_active(grp, m);


 if (!tipc_group_find_node(grp, m->node))
  tipc_nlist_del(&grp->dests, m->node);

 kfree(m);
}
