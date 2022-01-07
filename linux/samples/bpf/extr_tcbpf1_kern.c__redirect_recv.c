
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __sk_buff {scalar_t__ ifindex; } ;


 int bpf_redirect (scalar_t__,int) ;

int _redirect_recv(struct __sk_buff *skb)
{
 return bpf_redirect(skb->ifindex + 1, 1);
}
