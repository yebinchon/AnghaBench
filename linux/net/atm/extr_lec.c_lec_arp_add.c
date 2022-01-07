
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lec_priv {struct hlist_head* lec_arp_tables; } ;
struct lec_arp_table {int * mac_addr; int next; } ;
struct hlist_head {int dummy; } ;


 int ETH_ALEN ;
 size_t HASH (int ) ;
 int hlist_add_head (int *,struct hlist_head*) ;
 int pr_debug (char*,int *) ;

__attribute__((used)) static inline void
lec_arp_add(struct lec_priv *priv, struct lec_arp_table *entry)
{
 struct hlist_head *tmp;

 tmp = &priv->lec_arp_tables[HASH(entry->mac_addr[ETH_ALEN - 1])];
 hlist_add_head(&entry->next, tmp);

 pr_debug("Added entry:%pM\n", entry->mac_addr);
}
