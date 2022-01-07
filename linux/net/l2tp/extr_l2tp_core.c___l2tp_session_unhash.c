
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2tp_tunnel {scalar_t__ version; int l2tp_net; int hlist_lock; } ;
struct l2tp_session {int global_hlist; int hlist; struct l2tp_tunnel* tunnel; } ;
struct l2tp_net {int l2tp_session_hlist_lock; } ;


 scalar_t__ L2TP_HDR_VER_2 ;
 int hlist_del_init (int *) ;
 int hlist_del_init_rcu (int *) ;
 struct l2tp_net* l2tp_pernet (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_rcu () ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void __l2tp_session_unhash(struct l2tp_session *session)
{
 struct l2tp_tunnel *tunnel = session->tunnel;


 if (tunnel) {

  write_lock_bh(&tunnel->hlist_lock);
  hlist_del_init(&session->hlist);
  write_unlock_bh(&tunnel->hlist_lock);


  if (tunnel->version != L2TP_HDR_VER_2) {
   struct l2tp_net *pn = l2tp_pernet(tunnel->l2tp_net);
   spin_lock_bh(&pn->l2tp_session_hlist_lock);
   hlist_del_init_rcu(&session->global_hlist);
   spin_unlock_bh(&pn->l2tp_session_hlist_lock);
   synchronize_rcu();
  }
 }
}
