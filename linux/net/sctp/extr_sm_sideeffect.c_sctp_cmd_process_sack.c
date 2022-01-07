
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_2__ {int sk; } ;
struct sctp_association {int ep; int state; TYPE_1__ base; int outqueue; } ;
struct net {int dummy; } ;


 int GFP_ATOMIC ;
 int SCTP_EVENT_NO_PENDING_TSN ;
 int SCTP_EVENT_T_OTHER ;
 int SCTP_ST_OTHER (int ) ;
 int sctp_do_sm (struct net*,int ,int ,int ,int ,struct sctp_association*,int *,int ) ;
 scalar_t__ sctp_outq_sack (int *,struct sctp_chunk*) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int sctp_cmd_process_sack(struct sctp_cmd_seq *cmds,
     struct sctp_association *asoc,
     struct sctp_chunk *chunk)
{
 int err = 0;

 if (sctp_outq_sack(&asoc->outqueue, chunk)) {
  struct net *net = sock_net(asoc->base.sk);


  err = sctp_do_sm(net, SCTP_EVENT_T_OTHER,
     SCTP_ST_OTHER(SCTP_EVENT_NO_PENDING_TSN),
     asoc->state, asoc->ep, asoc, ((void*)0),
     GFP_ATOMIC);
 }

 return err;
}
