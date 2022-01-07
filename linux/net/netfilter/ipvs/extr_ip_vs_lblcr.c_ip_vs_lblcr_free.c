
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_lblcr_entry {int set; int list; } ;


 int hlist_del_rcu (int *) ;
 int ip_vs_dest_set_eraseall (int *) ;
 int kfree_rcu (struct ip_vs_lblcr_entry*,int ) ;
 int rcu_head ;

__attribute__((used)) static inline void ip_vs_lblcr_free(struct ip_vs_lblcr_entry *en)
{
 hlist_del_rcu(&en->list);
 ip_vs_dest_set_eraseall(&en->set);
 kfree_rcu(en, rcu_head);
}
