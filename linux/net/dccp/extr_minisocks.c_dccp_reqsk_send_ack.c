
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;


 int DCCP_BUG (char*) ;

void dccp_reqsk_send_ack(const struct sock *sk, struct sk_buff *skb,
    struct request_sock *rsk)
{
 DCCP_BUG("DCCP-ACK packets are never sent in LISTEN/RESPOND state");
}
