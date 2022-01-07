
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int * user; } ;
struct ubuf_info {int len; size_t bytelen; int zerocopy; int refcnt; scalar_t__ id; int callback; TYPE_1__ mmp; } ;
struct sock {int sk_zckey; } ;
struct sk_buff {scalar_t__ cb; } ;


 int BUILD_BUG_ON (int) ;
 int GFP_KERNEL ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ atomic_inc_return (int *) ;
 int in_task () ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ mm_account_pinned_pages (TYPE_1__*,size_t) ;
 int refcount_set (int *,int) ;
 int sock_hold (struct sock*) ;
 struct sk_buff* sock_omalloc (struct sock*,int ,int ) ;
 int sock_zerocopy_callback ;

struct ubuf_info *sock_zerocopy_alloc(struct sock *sk, size_t size)
{
 struct ubuf_info *uarg;
 struct sk_buff *skb;

 WARN_ON_ONCE(!in_task());

 skb = sock_omalloc(sk, 0, GFP_KERNEL);
 if (!skb)
  return ((void*)0);

 BUILD_BUG_ON(sizeof(*uarg) > sizeof(skb->cb));
 uarg = (void *)skb->cb;
 uarg->mmp.user = ((void*)0);

 if (mm_account_pinned_pages(&uarg->mmp, size)) {
  kfree_skb(skb);
  return ((void*)0);
 }

 uarg->callback = sock_zerocopy_callback;
 uarg->id = ((u32)atomic_inc_return(&sk->sk_zckey)) - 1;
 uarg->len = 1;
 uarg->bytelen = size;
 uarg->zerocopy = 1;
 refcount_set(&uarg->refcnt, 1);
 sock_hold(sk);

 return uarg;
}
