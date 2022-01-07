
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lec_priv {int dummy; } ;
struct lec_arp_table {int usage; int tx_wait; struct lec_priv* priv; int last_used; int timer; int next; int mac_addr; } ;


 int GFP_ATOMIC ;
 int INIT_HLIST_NODE (int *) ;
 int ether_addr_copy (int ,unsigned char const*) ;
 int jiffies ;
 struct lec_arp_table* kzalloc (int,int ) ;
 int lec_arp_expire_arp ;
 int pr_info (char*) ;
 int refcount_set (int *,int) ;
 int skb_queue_head_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static struct lec_arp_table *make_entry(struct lec_priv *priv,
     const unsigned char *mac_addr)
{
 struct lec_arp_table *to_return;

 to_return = kzalloc(sizeof(struct lec_arp_table), GFP_ATOMIC);
 if (!to_return) {
  pr_info("LEC: Arp entry kmalloc failed\n");
  return ((void*)0);
 }
 ether_addr_copy(to_return->mac_addr, mac_addr);
 INIT_HLIST_NODE(&to_return->next);
 timer_setup(&to_return->timer, lec_arp_expire_arp, 0);
 to_return->last_used = jiffies;
 to_return->priv = priv;
 skb_queue_head_init(&to_return->tx_wait);
 refcount_set(&to_return->usage, 1);
 return to_return;
}
