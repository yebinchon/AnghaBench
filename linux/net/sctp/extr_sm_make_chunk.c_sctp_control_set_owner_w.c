
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int destructor; int * sk; } ;
struct sctp_chunk {int shkey; scalar_t__ auth; struct sk_buff* skb; struct sctp_association* asoc; } ;
struct TYPE_3__ {int * sk; } ;
struct sctp_association {TYPE_1__ base; int shkey; } ;
struct TYPE_4__ {struct sctp_chunk* destructor_arg; } ;


 int sctp_auth_shkey_hold (int ) ;
 int sctp_control_release_owner ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void sctp_control_set_owner_w(struct sctp_chunk *chunk)
{
 struct sctp_association *asoc = chunk->asoc;
 struct sk_buff *skb = chunk->skb;
 if (chunk->auth) {
  chunk->shkey = asoc->shkey;
  sctp_auth_shkey_hold(chunk->shkey);
 }
 skb->sk = asoc ? asoc->base.sk : ((void*)0);
 skb_shinfo(skb)->destructor_arg = chunk;
 skb->destructor = sctp_control_release_owner;
}
