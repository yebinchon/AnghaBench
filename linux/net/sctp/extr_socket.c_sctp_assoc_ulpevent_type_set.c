
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_ulpevent {int dummy; } ;
struct sctp_event {scalar_t__ se_type; scalar_t__ se_on; } ;
struct TYPE_4__ {TYPE_1__* si; } ;
struct sctp_association {int ulpq; TYPE_2__ stream; int outqueue; int subscribe; } ;
struct TYPE_3__ {int (* enqueue_event ) (int *,struct sctp_ulpevent*) ;} ;


 int ENOMEM ;
 int GFP_USER ;
 scalar_t__ SCTP_SENDER_DRY_EVENT ;
 int __GFP_NOWARN ;
 scalar_t__ sctp_outq_is_empty (int *) ;
 struct sctp_ulpevent* sctp_ulpevent_make_sender_dry_event (struct sctp_association*,int) ;
 int sctp_ulpevent_type_set (int *,scalar_t__,scalar_t__) ;
 int stub1 (int *,struct sctp_ulpevent*) ;

__attribute__((used)) static int sctp_assoc_ulpevent_type_set(struct sctp_event *param,
     struct sctp_association *asoc)
{
 struct sctp_ulpevent *event;

 sctp_ulpevent_type_set(&asoc->subscribe, param->se_type, param->se_on);

 if (param->se_type == SCTP_SENDER_DRY_EVENT && param->se_on) {
  if (sctp_outq_is_empty(&asoc->outqueue)) {
   event = sctp_ulpevent_make_sender_dry_event(asoc,
     GFP_USER | __GFP_NOWARN);
   if (!event)
    return -ENOMEM;

   asoc->stream.si->enqueue_event(&asoc->ulpq, event);
  }
 }

 return 0;
}
