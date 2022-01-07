
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubuf_info {int len; } ;
struct sock {int sk_zckey; } ;
struct TYPE_2__ {struct sock* sk; } ;


 int atomic_dec (int *) ;
 TYPE_1__* skb_from_uarg (struct ubuf_info*) ;
 int sock_zerocopy_put (struct ubuf_info*) ;

void sock_zerocopy_put_abort(struct ubuf_info *uarg, bool have_uref)
{
 if (uarg) {
  struct sock *sk = skb_from_uarg(uarg)->sk;

  atomic_dec(&sk->sk_zckey);
  uarg->len--;

  if (have_uref)
   sock_zerocopy_put(uarg);
 }
}
