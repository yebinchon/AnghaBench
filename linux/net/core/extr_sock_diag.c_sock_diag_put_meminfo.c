
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int mem ;


 int SK_MEMINFO_VARS ;
 int nla_put (struct sk_buff*,int,int,int **) ;
 int sk_get_meminfo (struct sock*,int *) ;

int sock_diag_put_meminfo(struct sock *sk, struct sk_buff *skb, int attrtype)
{
 u32 mem[SK_MEMINFO_VARS];

 sk_get_meminfo(sk, mem);

 return nla_put(skb, attrtype, sizeof(mem), &mem);
}
