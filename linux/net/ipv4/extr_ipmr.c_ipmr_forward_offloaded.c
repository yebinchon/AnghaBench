
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mr_table {int dummy; } ;



__attribute__((used)) static bool ipmr_forward_offloaded(struct sk_buff *skb, struct mr_table *mrt,
       int in_vifi, int out_vifi)
{
 return 0;
}
