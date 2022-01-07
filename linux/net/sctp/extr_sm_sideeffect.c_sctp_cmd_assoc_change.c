
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct TYPE_6__ {TYPE_2__* si; } ;
struct TYPE_4__ {int sinit_max_instreams; int sinit_num_ostreams; } ;
struct sctp_association {int ulpq; TYPE_3__ stream; TYPE_1__ c; } ;
struct TYPE_5__ {int (* enqueue_event ) (int *,struct sctp_ulpevent*) ;} ;


 int GFP_ATOMIC ;
 struct sctp_ulpevent* sctp_ulpevent_make_assoc_change (struct sctp_association*,int ,int ,int ,int ,int ,int *,int ) ;
 int stub1 (int *,struct sctp_ulpevent*) ;

__attribute__((used)) static void sctp_cmd_assoc_change(struct sctp_cmd_seq *commands,
      struct sctp_association *asoc,
      u8 state)
{
 struct sctp_ulpevent *ev;

 ev = sctp_ulpevent_make_assoc_change(asoc, 0, state, 0,
         asoc->c.sinit_num_ostreams,
         asoc->c.sinit_max_instreams,
         ((void*)0), GFP_ATOMIC);
 if (ev)
  asoc->stream.si->enqueue_event(&asoc->ulpq, ev);
}
