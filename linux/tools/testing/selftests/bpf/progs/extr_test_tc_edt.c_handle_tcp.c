
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {scalar_t__ dest; } ;
struct __sk_buff {scalar_t__ data_end; } ;


 int TC_ACT_OK ;
 int TC_ACT_SHOT ;
 scalar_t__ bpf_htons (int) ;
 int throttle_flow (struct __sk_buff*) ;

__attribute__((used)) static inline int handle_tcp(struct __sk_buff *skb, struct tcphdr *tcp)
{
 void *data_end = (void *)(long)skb->data_end;


 if ((void *)(tcp + 1) > data_end)
  return TC_ACT_SHOT;

 if (tcp->dest == bpf_htons(9000))
  return throttle_flow(skb);

 return TC_ACT_OK;
}
