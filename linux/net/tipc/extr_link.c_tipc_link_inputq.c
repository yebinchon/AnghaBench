
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {struct sk_buff_head* inputq; } ;
struct sk_buff_head {int dummy; } ;



struct sk_buff_head *tipc_link_inputq(struct tipc_link *l)
{
 return l->inputq;
}
