
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {struct tc_u_common* data; int root; int prio; } ;
struct tc_u_hnode {int handle; int is_root; int refcnt; int next; int handle_idr; int prio; } ;
struct tc_u_common {int hlist; int refcnt; int hnode; int handle_idr; void* ptr; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int RCU_INIT_POINTER (int ,int ) ;
 int gen_new_htid (struct tc_u_common*,struct tc_u_hnode*) ;
 int hlist_add_head (int *,int ) ;
 int idr_init (int *) ;
 int kfree (struct tc_u_hnode*) ;
 void* kzalloc (int,int ) ;
 int rcu_assign_pointer (int ,struct tc_u_hnode*) ;
 struct tc_u_common* tc_u_common_find (void*) ;
 void* tc_u_common_ptr (struct tcf_proto*) ;
 int tc_u_hash (void*) ;

__attribute__((used)) static int u32_init(struct tcf_proto *tp)
{
 struct tc_u_hnode *root_ht;
 void *key = tc_u_common_ptr(tp);
 struct tc_u_common *tp_c = tc_u_common_find(key);

 root_ht = kzalloc(sizeof(*root_ht), GFP_KERNEL);
 if (root_ht == ((void*)0))
  return -ENOBUFS;

 root_ht->refcnt++;
 root_ht->handle = tp_c ? gen_new_htid(tp_c, root_ht) : 0x80000000;
 root_ht->prio = tp->prio;
 root_ht->is_root = 1;
 idr_init(&root_ht->handle_idr);

 if (tp_c == ((void*)0)) {
  tp_c = kzalloc(sizeof(*tp_c), GFP_KERNEL);
  if (tp_c == ((void*)0)) {
   kfree(root_ht);
   return -ENOBUFS;
  }
  tp_c->ptr = key;
  INIT_HLIST_NODE(&tp_c->hnode);
  idr_init(&tp_c->handle_idr);

  hlist_add_head(&tp_c->hnode, tc_u_hash(key));
 }

 tp_c->refcnt++;
 RCU_INIT_POINTER(root_ht->next, tp_c->hlist);
 rcu_assign_pointer(tp_c->hlist, root_ht);

 root_ht->refcnt++;
 rcu_assign_pointer(tp->root, root_ht);
 tp->data = tp_c;
 return 0;
}
