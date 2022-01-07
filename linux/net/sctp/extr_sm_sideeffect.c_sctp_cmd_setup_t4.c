
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int rto; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {struct sctp_transport* transport; } ;
struct sctp_association {int * timeouts; } ;


 size_t SCTP_EVENT_TIMEOUT_T4_RTO ;
 struct sctp_transport* sctp_assoc_choose_alter_transport (struct sctp_association*,struct sctp_transport*) ;

__attribute__((used)) static void sctp_cmd_setup_t4(struct sctp_cmd_seq *cmds,
         struct sctp_association *asoc,
         struct sctp_chunk *chunk)
{
 struct sctp_transport *t;

 t = sctp_assoc_choose_alter_transport(asoc, chunk->transport);
 asoc->timeouts[SCTP_EVENT_TIMEOUT_T4_RTO] = t->rto;
 chunk->transport = t;
}
