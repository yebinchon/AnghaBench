
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iov_iter {int dummy; } ;
struct ahash_request {int dummy; } ;


 int __skb_datagram_iter (struct sk_buff const*,int,struct iov_iter*,int,int,int ,struct ahash_request*) ;
 int hash_and_copy_to_iter ;

int skb_copy_and_hash_datagram_iter(const struct sk_buff *skb, int offset,
      struct iov_iter *to, int len,
      struct ahash_request *hash)
{
 return __skb_datagram_iter(skb, offset, to, len, 1,
   hash_and_copy_to_iter, hash);
}
