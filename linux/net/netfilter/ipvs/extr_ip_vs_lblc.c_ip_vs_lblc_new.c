
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
typedef int u16 ;
struct ip_vs_lblc_table {int dummy; } ;
struct ip_vs_lblc_entry {struct ip_vs_dest* dest; int lastuse; int addr; int af; } ;
struct ip_vs_dest {int dummy; } ;


 int GFP_ATOMIC ;
 int ip_vs_addr_copy (int ,int *,union nf_inet_addr const*) ;
 int ip_vs_dest_hold (struct ip_vs_dest*) ;
 int ip_vs_lblc_del (struct ip_vs_lblc_entry*) ;
 struct ip_vs_lblc_entry* ip_vs_lblc_get (int ,struct ip_vs_lblc_table*,union nf_inet_addr const*) ;
 int ip_vs_lblc_hash (struct ip_vs_lblc_table*,struct ip_vs_lblc_entry*) ;
 int jiffies ;
 struct ip_vs_lblc_entry* kmalloc (int,int ) ;

__attribute__((used)) static inline struct ip_vs_lblc_entry *
ip_vs_lblc_new(struct ip_vs_lblc_table *tbl, const union nf_inet_addr *daddr,
        u16 af, struct ip_vs_dest *dest)
{
 struct ip_vs_lblc_entry *en;

 en = ip_vs_lblc_get(af, tbl, daddr);
 if (en) {
  if (en->dest == dest)
   return en;
  ip_vs_lblc_del(en);
 }
 en = kmalloc(sizeof(*en), GFP_ATOMIC);
 if (!en)
  return ((void*)0);

 en->af = af;
 ip_vs_addr_copy(af, &en->addr, daddr);
 en->lastuse = jiffies;

 ip_vs_dest_hold(dest);
 en->dest = dest;

 ip_vs_lblc_hash(tbl, en);

 return en;
}
