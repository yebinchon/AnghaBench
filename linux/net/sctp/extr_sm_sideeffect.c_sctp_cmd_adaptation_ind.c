
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_ulpevent {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct TYPE_4__ {TYPE_1__* si; } ;
struct sctp_association {int ulpq; TYPE_2__ stream; } ;
struct TYPE_3__ {int (* enqueue_event ) (int *,struct sctp_ulpevent*) ;} ;


 int GFP_ATOMIC ;
 struct sctp_ulpevent* sctp_ulpevent_make_adaptation_indication (struct sctp_association*,int ) ;
 int stub1 (int *,struct sctp_ulpevent*) ;

__attribute__((used)) static void sctp_cmd_adaptation_ind(struct sctp_cmd_seq *commands,
        struct sctp_association *asoc)
{
 struct sctp_ulpevent *ev;

 ev = sctp_ulpevent_make_adaptation_indication(asoc, GFP_ATOMIC);

 if (ev)
  asoc->stream.si->enqueue_event(&asoc->ulpq, ev);
}
