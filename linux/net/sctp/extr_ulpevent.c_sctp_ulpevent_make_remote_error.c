
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; int truesize; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_remote_error {int sre_assoc_id; int sre_error; int sre_length; scalar_t__ sre_flags; int sre_type; } ;
struct sctp_errhdr {int length; int cause; } ;
struct sctp_chunk {TYPE_1__* skb; } ;
struct sctp_association {int dummy; } ;
typedef int gfp_t ;
typedef int __u16 ;
typedef int __be16 ;
struct TYPE_3__ {scalar_t__ data; } ;


 int MSG_NOTIFICATION ;
 int SCTP_PAD4 (int ) ;
 int SCTP_REMOTE_ERROR ;
 int memset (struct sctp_remote_error*,int ,int) ;
 int ntohs (int ) ;
 int sctp_assoc2id (struct sctp_association const*) ;
 struct sctp_ulpevent* sctp_skb2event (struct sk_buff*) ;
 int sctp_ulpevent_init (struct sctp_ulpevent*,int ,int ) ;
 int sctp_ulpevent_set_owner (struct sctp_ulpevent*,struct sctp_association const*) ;
 struct sk_buff* skb_copy_expand (TYPE_1__*,int,int ,int ) ;
 int skb_pull (TYPE_1__*,int) ;
 struct sctp_remote_error* skb_push (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int) ;

struct sctp_ulpevent *
sctp_ulpevent_make_remote_error(const struct sctp_association *asoc,
    struct sctp_chunk *chunk, __u16 flags,
    gfp_t gfp)
{
 struct sctp_remote_error *sre;
 struct sctp_ulpevent *event;
 struct sctp_errhdr *ch;
 struct sk_buff *skb;
 __be16 cause;
 int elen;

 ch = (struct sctp_errhdr *)(chunk->skb->data);
 cause = ch->cause;
 elen = SCTP_PAD4(ntohs(ch->length)) - sizeof(*ch);


 skb_pull(chunk->skb, sizeof(*ch));




 skb = skb_copy_expand(chunk->skb, sizeof(*sre), 0, gfp);


 skb_pull(chunk->skb, elen);
 if (!skb)
  goto fail;


 event = sctp_skb2event(skb);
 sctp_ulpevent_init(event, MSG_NOTIFICATION, skb->truesize);

 sre = skb_push(skb, sizeof(*sre));


 skb_trim(skb, sizeof(*sre) + elen);


 memset(sre, 0, sizeof(*sre));
 sre->sre_type = SCTP_REMOTE_ERROR;
 sre->sre_flags = 0;
 sre->sre_length = skb->len;
 sre->sre_error = cause;
 sctp_ulpevent_set_owner(event, asoc);
 sre->sre_assoc_id = sctp_assoc2id(asoc);

 return event;
fail:
 return ((void*)0);
}
