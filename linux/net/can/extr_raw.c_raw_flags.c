
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_can {int dummy; } ;
struct sk_buff {scalar_t__ cb; } ;


 int sock_skb_cb_check_size (int) ;

__attribute__((used)) static inline unsigned int *raw_flags(struct sk_buff *skb)
{
 sock_skb_cb_check_size(sizeof(struct sockaddr_can) +
          sizeof(unsigned int));


 return (unsigned int *)(&((struct sockaddr_can *)skb->cb)[1]);
}
