
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int rst; } ;
struct sk_buff {int dummy; } ;
typedef int _tcph ;


 struct tcphdr* skb_header_pointer (struct sk_buff const*,int,int,struct tcphdr*) ;

__attribute__((used)) static inline int is_tcp_reset(const struct sk_buff *skb, int nh_len)
{
 struct tcphdr _tcph, *th;

 th = skb_header_pointer(skb, nh_len, sizeof(_tcph), &_tcph);
 if (th == ((void*)0))
  return 0;
 return th->rst;
}
