
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ipv6_pinfo {int ipv6_fl_list; } ;
struct ipv6_fl_socklist {int fl; int next; } ;


 int fl_release (int ) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int ip6_sk_fl_lock ;
 int kfree_rcu (struct ipv6_fl_socklist*,int ) ;
 int lockdep_is_held (int *) ;
 int rcu ;
 int rcu_access_pointer (int ) ;
 struct ipv6_fl_socklist* rcu_dereference_protected (int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void fl6_free_socklist(struct sock *sk)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct ipv6_fl_socklist *sfl;

 if (!rcu_access_pointer(np->ipv6_fl_list))
  return;

 spin_lock_bh(&ip6_sk_fl_lock);
 while ((sfl = rcu_dereference_protected(np->ipv6_fl_list,
      lockdep_is_held(&ip6_sk_fl_lock))) != ((void*)0)) {
  np->ipv6_fl_list = sfl->next;
  spin_unlock_bh(&ip6_sk_fl_lock);

  fl_release(sfl->fl);
  kfree_rcu(sfl, rcu);

  spin_lock_bh(&ip6_sk_fl_lock);
 }
 spin_unlock_bh(&ip6_sk_fl_lock);
}
