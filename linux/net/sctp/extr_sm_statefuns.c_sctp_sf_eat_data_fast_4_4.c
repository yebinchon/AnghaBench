
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union sctp_subtype {int dummy; } sctp_subtype ;
typedef int u8 ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct TYPE_2__ {scalar_t__ data_hdr; } ;
struct sctp_chunk {scalar_t__ end_of_packet; TYPE_1__ subh; } ;
struct sctp_association {int stream; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int BUG () ;
 int SCTP_CMD_GEN_SACK ;
 int SCTP_CMD_GEN_SHUTDOWN ;
 int SCTP_CMD_REPORT_BAD_TAG ;
 int SCTP_CMD_TIMER_RESTART ;
 int SCTP_DISPOSITION_ABORT ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_EVENT_TIMEOUT_T2_SHUTDOWN ;
 int SCTP_FORCE () ;







 int SCTP_NULL () ;
 int SCTP_TO (int ) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int ) ;
 int sctp_datachk_len (int *) ;
 int sctp_datahdr_len (int *) ;
 int sctp_eat_data (struct sctp_association const*,struct sctp_chunk*,struct sctp_cmd_seq*) ;
 int sctp_sf_abort_violation (struct net*,struct sctp_endpoint const*,struct sctp_association const*,struct sctp_chunk*,struct sctp_cmd_seq*,int *,int ) ;
 int sctp_sf_pdiscard (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_violation_chunklen (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;

enum sctp_disposition sctp_sf_eat_data_fast_4_4(
     struct net *net,
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const union sctp_subtype type,
     void *arg,
     struct sctp_cmd_seq *commands)
{
 struct sctp_chunk *chunk = arg;
 int error;

 if (!sctp_vtag_verify(chunk, asoc)) {
  sctp_add_cmd_sf(commands, SCTP_CMD_REPORT_BAD_TAG,
    SCTP_NULL());
  return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);
 }

 if (!sctp_chunk_length_valid(chunk, sctp_datachk_len(&asoc->stream)))
  return sctp_sf_violation_chunklen(net, ep, asoc, type, arg,
        commands);

 error = sctp_eat_data(asoc, chunk, commands);
 switch (error) {
 case 129:
 case 132:
 case 133:
 case 131:
 case 134:
  break;
 case 130:
  return SCTP_DISPOSITION_ABORT;
 case 128:
  return sctp_sf_abort_violation(net, ep, asoc, chunk, commands,
            (u8 *)chunk->subh.data_hdr,
            sctp_datahdr_len(&asoc->stream));
 default:
  BUG();
 }
 if (chunk->end_of_packet) {



  sctp_add_cmd_sf(commands, SCTP_CMD_GEN_SHUTDOWN, SCTP_NULL());
  sctp_add_cmd_sf(commands, SCTP_CMD_GEN_SACK, SCTP_FORCE());
  sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_RESTART,
    SCTP_TO(SCTP_EVENT_TIMEOUT_T2_SHUTDOWN));
 }

 return SCTP_DISPOSITION_CONSUME;
}
