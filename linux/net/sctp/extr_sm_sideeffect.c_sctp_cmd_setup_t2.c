
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int rto; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {struct sctp_transport* transport; } ;
struct sctp_association {int * timeouts; struct sctp_transport* shutdown_last_sent_to; } ;


 size_t SCTP_EVENT_TIMEOUT_T2_SHUTDOWN ;
 struct sctp_transport* sctp_assoc_choose_alter_transport (struct sctp_association*,struct sctp_transport*) ;

__attribute__((used)) static void sctp_cmd_setup_t2(struct sctp_cmd_seq *cmds,
         struct sctp_association *asoc,
         struct sctp_chunk *chunk)
{
 struct sctp_transport *t;

 if (chunk->transport)
  t = chunk->transport;
 else {
  t = sctp_assoc_choose_alter_transport(asoc,
           asoc->shutdown_last_sent_to);
  chunk->transport = t;
 }
 asoc->shutdown_last_sent_to = t;
 asoc->timeouts[SCTP_EVENT_TIMEOUT_T2_SHUTDOWN] = t->rto;
}
