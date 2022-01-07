
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef int __wsum ;


 int __skb_datagram_iter (struct sk_buff const*,int,struct iov_iter*,int,int,int ,int *) ;
 int csum_and_copy_to_iter ;

__attribute__((used)) static int skb_copy_and_csum_datagram(const struct sk_buff *skb, int offset,
          struct iov_iter *to, int len,
          __wsum *csump)
{
 return __skb_datagram_iter(skb, offset, to, len, 1,
   csum_and_copy_to_iter, csump);
}
