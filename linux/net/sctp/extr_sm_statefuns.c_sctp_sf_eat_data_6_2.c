
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union sctp_subtype {int dummy; } sctp_subtype ;
typedef union sctp_arg {int dummy; } sctp_arg ;
typedef int u8 ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct TYPE_3__ {scalar_t__ data_hdr; } ;
struct sctp_chunk {scalar_t__ end_of_packet; TYPE_2__* chunk_hdr; TYPE_1__ subh; } ;
struct sctp_association {scalar_t__* timeouts; int stream; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
struct TYPE_4__ {int flags; } ;


 int BUG () ;
 int SCTP_CMD_GEN_SACK ;
 int SCTP_CMD_REPORT_BAD_TAG ;
 int SCTP_CMD_TIMER_RESTART ;
 int SCTP_DATA_SACK_IMM ;
 int SCTP_DISPOSITION_ABORT ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_DISCARD ;
 size_t SCTP_EVENT_TIMEOUT_AUTOCLOSE ;
 union sctp_arg SCTP_FORCE () ;







 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_IN_DATA_CHUNK_DISCARDS ;
 union sctp_arg SCTP_NOFORCE () ;
 union sctp_arg SCTP_NULL () ;
 union sctp_arg SCTP_TO (size_t) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,union sctp_arg) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int ) ;
 int sctp_datachk_len (int *) ;
 int sctp_datahdr_len (int *) ;
 int sctp_eat_data (struct sctp_association const*,struct sctp_chunk*,struct sctp_cmd_seq*) ;
 int sctp_sf_abort_violation (struct net*,struct sctp_endpoint const*,struct sctp_association const*,struct sctp_chunk*,struct sctp_cmd_seq*,int *,int ) ;
 int sctp_sf_pdiscard (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_violation_chunklen (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;

enum sctp_disposition sctp_sf_eat_data_6_2(struct net *net,
        const struct sctp_endpoint *ep,
        const struct sctp_association *asoc,
        const union sctp_subtype type,
        void *arg,
        struct sctp_cmd_seq *commands)
{
 union sctp_arg force = SCTP_NOFORCE();
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
  break;
 case 132:
 case 134:
  SCTP_INC_STATS(net, SCTP_MIB_IN_DATA_CHUNK_DISCARDS);
  goto discard_noforce;
 case 133:
 case 131:
  SCTP_INC_STATS(net, SCTP_MIB_IN_DATA_CHUNK_DISCARDS);
  goto discard_force;
 case 130:
  return SCTP_DISPOSITION_ABORT;
 case 128:
  return sctp_sf_abort_violation(net, ep, asoc, chunk, commands,
            (u8 *)chunk->subh.data_hdr,
            sctp_datahdr_len(&asoc->stream));
 default:
  BUG();
 }

 if (chunk->chunk_hdr->flags & SCTP_DATA_SACK_IMM)
  force = SCTP_FORCE();

 if (asoc->timeouts[SCTP_EVENT_TIMEOUT_AUTOCLOSE]) {
  sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_RESTART,
    SCTP_TO(SCTP_EVENT_TIMEOUT_AUTOCLOSE));
 }
 if (chunk->end_of_packet)
  sctp_add_cmd_sf(commands, SCTP_CMD_GEN_SACK, force);

 return SCTP_DISPOSITION_CONSUME;

discard_force:
 if (chunk->end_of_packet)
  sctp_add_cmd_sf(commands, SCTP_CMD_GEN_SACK, SCTP_FORCE());
 return SCTP_DISPOSITION_DISCARD;

discard_noforce:
 if (chunk->end_of_packet)
  sctp_add_cmd_sf(commands, SCTP_CMD_GEN_SACK, force);

 return SCTP_DISPOSITION_DISCARD;
}
