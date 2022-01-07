
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
struct TYPE_2__ {int frag_max_size; } ;


 TYPE_1__* IPCB (struct sk_buff*) ;
 int IP_RECVFRAGSIZE ;
 int SOL_IP ;
 int put_cmsg (struct msghdr*,int ,int ,int,int*) ;

__attribute__((used)) static void ip_cmsg_recv_fragsize(struct msghdr *msg, struct sk_buff *skb)
{
 int val;

 if (IPCB(skb)->frag_max_size == 0)
  return;

 val = IPCB(skb)->frag_max_size;
 put_cmsg(msg, SOL_IP, IP_RECVFRAGSIZE, sizeof(val), &val);
}
