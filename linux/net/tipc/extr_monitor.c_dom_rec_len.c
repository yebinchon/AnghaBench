
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tipc_mon_domain {int members; } ;



__attribute__((used)) static int dom_rec_len(struct tipc_mon_domain *dom, u16 mcnt)
{
 return ((void *)&dom->members - (void *)dom) + (mcnt * sizeof(u32));
}
