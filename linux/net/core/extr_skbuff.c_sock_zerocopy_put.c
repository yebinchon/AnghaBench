
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubuf_info {int zerocopy; int (* callback ) (struct ubuf_info*,int ) ;int refcnt; } ;


 int consume_skb (int ) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int skb_from_uarg (struct ubuf_info*) ;
 int stub1 (struct ubuf_info*,int ) ;

void sock_zerocopy_put(struct ubuf_info *uarg)
{
 if (uarg && refcount_dec_and_test(&uarg->refcnt)) {
  if (uarg->callback)
   uarg->callback(uarg, uarg->zerocopy);
  else
   consume_skb(skb_from_uarg(uarg));
 }
}
