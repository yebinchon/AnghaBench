
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_protosw {int flags; int list; int protocol; } ;


 int INET_PROTOSW_PERMANENT ;
 int inetsw_lock ;
 int list_del_rcu (int *) ;
 int pr_err (char*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_net () ;

void inet_unregister_protosw(struct inet_protosw *p)
{
 if (INET_PROTOSW_PERMANENT & p->flags) {
  pr_err("Attempt to unregister permanent protocol %d\n",
         p->protocol);
 } else {
  spin_lock_bh(&inetsw_lock);
  list_del_rcu(&p->list);
  spin_unlock_bh(&inetsw_lock);

  synchronize_net();
 }
}
