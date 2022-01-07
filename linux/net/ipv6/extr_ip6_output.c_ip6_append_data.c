
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {int sk_write_queue; } ;
struct rt6_info {int dummy; } ;
struct ipv6_pinfo {int cork; } ;
struct ipcm6_cookie {TYPE_1__* opt; } ;
struct flowi6 {int dummy; } ;
struct TYPE_6__ {struct flowi6 ip6; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {int base; TYPE_3__ fl; } ;
struct inet_sock {TYPE_4__ cork; } ;
struct TYPE_5__ {int opt_flen; } ;


 unsigned int MSG_PROBE ;
 int __ip6_append_data (struct sock*,struct flowi6*,int *,int *,int *,int ,int (*) (void*,char*,int,int,int,struct sk_buff*),void*,int,int,unsigned int,struct ipcm6_cookie*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ip6_setup_cork (struct sock*,TYPE_4__*,int *,struct ipcm6_cookie*,struct rt6_info*,struct flowi6*) ;
 int sk_page_frag (struct sock*) ;
 scalar_t__ skb_queue_empty (int *) ;

int ip6_append_data(struct sock *sk,
      int getfrag(void *from, char *to, int offset, int len,
    int odd, struct sk_buff *skb),
      void *from, int length, int transhdrlen,
      struct ipcm6_cookie *ipc6, struct flowi6 *fl6,
      struct rt6_info *rt, unsigned int flags)
{
 struct inet_sock *inet = inet_sk(sk);
 struct ipv6_pinfo *np = inet6_sk(sk);
 int exthdrlen;
 int err;

 if (flags&MSG_PROBE)
  return 0;
 if (skb_queue_empty(&sk->sk_write_queue)) {



  err = ip6_setup_cork(sk, &inet->cork, &np->cork,
         ipc6, rt, fl6);
  if (err)
   return err;

  exthdrlen = (ipc6->opt ? ipc6->opt->opt_flen : 0);
  length += exthdrlen;
  transhdrlen += exthdrlen;
 } else {
  fl6 = &inet->cork.fl.u.ip6;
  transhdrlen = 0;
 }

 return __ip6_append_data(sk, fl6, &sk->sk_write_queue, &inet->cork.base,
     &np->cork, sk_page_frag(sk), getfrag,
     from, length, transhdrlen, flags, ipc6);
}
