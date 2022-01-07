
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iov_iter {int dummy; } ;


 int __skb_datagram_iter (struct sk_buff const*,int,struct iov_iter*,int,int,int ,int *) ;
 int simple_copy_to_iter ;
 int trace_skb_copy_datagram_iovec (struct sk_buff const*,int) ;

int skb_copy_datagram_iter(const struct sk_buff *skb, int offset,
      struct iov_iter *to, int len)
{
 trace_skb_copy_datagram_iovec(skb, len);
 return __skb_datagram_iter(skb, offset, to, len, 0,
   simple_copy_to_iter, ((void*)0));
}
