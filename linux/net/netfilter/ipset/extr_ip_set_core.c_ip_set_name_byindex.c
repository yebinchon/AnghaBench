
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ip_set {int name; } ;
typedef int ip_set_id_t ;


 int BUG_ON (int) ;
 int IPSET_MAXNAMELEN ;
 struct ip_set* ip_set_rcu_get (struct net*,int ) ;
 int ip_set_ref_lock ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int strncpy (char*,int ,int ) ;

void
ip_set_name_byindex(struct net *net, ip_set_id_t index, char *name)
{
 struct ip_set *set = ip_set_rcu_get(net, index);

 BUG_ON(!set);

 read_lock_bh(&ip_set_ref_lock);
 strncpy(name, set->name, IPSET_MAXNAMELEN);
 read_unlock_bh(&ip_set_ref_lock);
}
