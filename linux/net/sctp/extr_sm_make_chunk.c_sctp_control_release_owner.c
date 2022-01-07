
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_shared_key {int key_id; int refcnt; int key_list; scalar_t__ deactivated; } ;
struct sctp_chunk {struct sctp_shared_key* shkey; struct sctp_association* asoc; } ;
struct TYPE_5__ {TYPE_1__* si; } ;
struct sctp_association {int ulpq; TYPE_2__ stream; } ;
struct TYPE_6__ {struct sctp_chunk* destructor_arg; } ;
struct TYPE_4__ {int (* enqueue_event ) (int *,struct sctp_ulpevent*) ;} ;


 int GFP_KERNEL ;
 int SCTP_AUTH_FREE_KEY ;
 int list_empty (int *) ;
 int refcount_read (int *) ;
 int sctp_auth_shkey_release (struct sctp_shared_key*) ;
 struct sctp_ulpevent* sctp_ulpevent_make_authkey (struct sctp_association*,int ,int ,int ) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 int stub1 (int *,struct sctp_ulpevent*) ;

__attribute__((used)) static void sctp_control_release_owner(struct sk_buff *skb)
{
 struct sctp_chunk *chunk = skb_shinfo(skb)->destructor_arg;

 if (chunk->shkey) {
  struct sctp_shared_key *shkey = chunk->shkey;
  struct sctp_association *asoc = chunk->asoc;





  if (shkey->deactivated && !list_empty(&shkey->key_list) &&
      refcount_read(&shkey->refcnt) == 2) {
   struct sctp_ulpevent *ev;

   ev = sctp_ulpevent_make_authkey(asoc, shkey->key_id,
       SCTP_AUTH_FREE_KEY,
       GFP_KERNEL);
   if (ev)
    asoc->stream.si->enqueue_event(&asoc->ulpq, ev);
  }
  sctp_auth_shkey_release(chunk->shkey);
 }
}
