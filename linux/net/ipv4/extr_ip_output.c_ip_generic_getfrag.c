
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; int csum; } ;
struct msghdr {int msg_iter; } ;
typedef int __wsum ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int EFAULT ;
 int copy_from_iter_full (char*,int,int *) ;
 int csum_and_copy_from_iter_full (char*,int,int *,int *) ;
 int csum_block_add (int ,int ,int) ;

int
ip_generic_getfrag(void *from, char *to, int offset, int len, int odd, struct sk_buff *skb)
{
 struct msghdr *msg = from;

 if (skb->ip_summed == CHECKSUM_PARTIAL) {
  if (!copy_from_iter_full(to, len, &msg->msg_iter))
   return -EFAULT;
 } else {
  __wsum csum = 0;
  if (!csum_and_copy_from_iter_full(to, len, &csum, &msg->msg_iter))
   return -EFAULT;
  skb->csum = csum_block_add(skb->csum, csum, odd);
 }
 return 0;
}
