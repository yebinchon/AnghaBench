
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
typedef int u16 ;
struct ip_vs_lblcr_table {int dummy; } ;
struct TYPE_2__ {int list; int size; } ;
struct ip_vs_lblcr_entry {TYPE_1__ set; int lastuse; int addr; int af; } ;
struct ip_vs_dest {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int ip_vs_addr_copy (int ,int *,union nf_inet_addr const*) ;
 int ip_vs_dest_set_insert (TYPE_1__*,struct ip_vs_dest*,int) ;
 struct ip_vs_lblcr_entry* ip_vs_lblcr_get (int ,struct ip_vs_lblcr_table*,union nf_inet_addr const*) ;
 int ip_vs_lblcr_hash (struct ip_vs_lblcr_table*,struct ip_vs_lblcr_entry*) ;
 int jiffies ;
 struct ip_vs_lblcr_entry* kmalloc (int,int ) ;

__attribute__((used)) static inline struct ip_vs_lblcr_entry *
ip_vs_lblcr_new(struct ip_vs_lblcr_table *tbl, const union nf_inet_addr *daddr,
  u16 af, struct ip_vs_dest *dest)
{
 struct ip_vs_lblcr_entry *en;

 en = ip_vs_lblcr_get(af, tbl, daddr);
 if (!en) {
  en = kmalloc(sizeof(*en), GFP_ATOMIC);
  if (!en)
   return ((void*)0);

  en->af = af;
  ip_vs_addr_copy(af, &en->addr, daddr);
  en->lastuse = jiffies;


  atomic_set(&(en->set.size), 0);
  INIT_LIST_HEAD(&en->set.list);

  ip_vs_dest_set_insert(&en->set, dest, 0);

  ip_vs_lblcr_hash(tbl, en);
  return en;
 }

 ip_vs_dest_set_insert(&en->set, dest, 1);

 return en;
}
