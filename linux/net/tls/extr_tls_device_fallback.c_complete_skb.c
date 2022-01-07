
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_wmem_alloc; } ;
struct sk_buff {scalar_t__ destructor; int truesize; struct sock* sk; int data; int len; } ;


 int WARN_ON_ONCE (int ) ;
 scalar_t__ likely (int) ;
 int memcpy (int ,int ,int) ;
 int refcount_add (int,int *) ;
 int refcount_sub_and_test (int,int *) ;
 int skb_copy_header (struct sk_buff*,struct sk_buff*) ;
 int skb_put (struct sk_buff*,int ) ;
 scalar_t__ sock_efree ;
 int update_chksum (struct sk_buff*,int) ;

__attribute__((used)) static void complete_skb(struct sk_buff *nskb, struct sk_buff *skb, int headln)
{
 struct sock *sk = skb->sk;
 int delta;

 skb_copy_header(nskb, skb);

 skb_put(nskb, skb->len);
 memcpy(nskb->data, skb->data, headln);

 nskb->destructor = skb->destructor;
 nskb->sk = sk;
 skb->destructor = ((void*)0);
 skb->sk = ((void*)0);

 update_chksum(nskb, headln);


 if (nskb->destructor == sock_efree)
  return;

 delta = nskb->truesize - skb->truesize;
 if (likely(delta < 0))
  WARN_ON_ONCE(refcount_sub_and_test(-delta, &sk->sk_wmem_alloc));
 else if (delta)
  refcount_add(delta, &sk->sk_wmem_alloc);
}
