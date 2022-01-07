
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {int sk_wmem_queued; int sk_wmem_alloc; } ;
struct sctp_chunk {TYPE_3__* skb; scalar_t__ shkey; struct sctp_association* asoc; } ;
struct TYPE_5__ {struct sock* sk; } ;
struct sctp_association {int sndbuf_used; TYPE_1__ base; } ;
struct TYPE_7__ {int truesize; int destructor; } ;
struct TYPE_6__ {struct sctp_chunk* destructor_arg; } ;


 int refcount_add (int,int *) ;
 int sctp_association_hold (struct sctp_association*) ;
 int sctp_auth_shkey_hold (scalar_t__) ;
 int sctp_wfree ;
 int sk_mem_charge (struct sock*,int ) ;
 int skb_set_owner_w (TYPE_3__*,struct sock*) ;
 TYPE_2__* skb_shinfo (TYPE_3__*) ;

__attribute__((used)) static inline void sctp_set_owner_w(struct sctp_chunk *chunk)
{
 struct sctp_association *asoc = chunk->asoc;
 struct sock *sk = asoc->base.sk;


 sctp_association_hold(asoc);

 if (chunk->shkey)
  sctp_auth_shkey_hold(chunk->shkey);

 skb_set_owner_w(chunk->skb, sk);

 chunk->skb->destructor = sctp_wfree;

 skb_shinfo(chunk->skb)->destructor_arg = chunk;

 refcount_add(sizeof(struct sctp_chunk), &sk->sk_wmem_alloc);
 asoc->sndbuf_used += chunk->skb->truesize + sizeof(struct sctp_chunk);
 sk->sk_wmem_queued += chunk->skb->truesize + sizeof(struct sctp_chunk);
 sk_mem_charge(sk, chunk->skb->truesize);
}
