
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_lblcr_table {int entries; int * bucket; } ;
struct ip_vs_lblcr_entry {int list; int addr; int af; } ;


 int atomic_inc (int *) ;
 int hlist_add_head_rcu (int *,int *) ;
 unsigned int ip_vs_lblcr_hashkey (int ,int *) ;

__attribute__((used)) static void
ip_vs_lblcr_hash(struct ip_vs_lblcr_table *tbl, struct ip_vs_lblcr_entry *en)
{
 unsigned int hash = ip_vs_lblcr_hashkey(en->af, &en->addr);

 hlist_add_head_rcu(&en->list, &tbl->bucket[hash]);
 atomic_inc(&tbl->entries);
}
