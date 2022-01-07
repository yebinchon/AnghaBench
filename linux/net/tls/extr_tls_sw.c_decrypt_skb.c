
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct scatterlist {int dummy; } ;


 int decrypt_internal (struct sock*,struct sk_buff*,int *,struct scatterlist*,int*,int*,int) ;

int decrypt_skb(struct sock *sk, struct sk_buff *skb,
  struct scatterlist *sgout)
{
 bool zc = 1;
 int chunk;

 return decrypt_internal(sk, skb, ((void*)0), sgout, &chunk, &zc, 0);
}
