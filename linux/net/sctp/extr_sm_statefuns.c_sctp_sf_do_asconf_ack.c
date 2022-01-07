
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_paramhdr {int dummy; } ;
struct sctp_errhdr {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct TYPE_8__ {scalar_t__ addip_hdr; } ;
struct sctp_chunk {TYPE_4__ subh; TYPE_3__* skb; int auth; } ;
struct TYPE_5__ {int asconf_capable; } ;
struct sctp_association {scalar_t__ addip_serial; struct sctp_chunk* addip_last_asconf; TYPE_1__ peer; } ;
struct sctp_addiphdr {int serial; } ;
struct sctp_addip_chunk {int dummy; } ;
struct TYPE_6__ {int addip_noauth; } ;
struct net {TYPE_2__ sctp; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
typedef scalar_t__ __u32 ;
struct TYPE_7__ {scalar_t__ data; } ;


 scalar_t__ ADDIP_SERIAL_gte (scalar_t__,scalar_t__) ;
 int ECONNABORTED ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_ASSOC_FAILED ;
 int SCTP_CMD_DISCARD_PACKET ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_REPORT_BAD_TAG ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_DEC_STATS (struct net*,int ) ;
 int SCTP_DISPOSITION_ABORT ;
 int SCTP_DISPOSITION_DISCARD ;
 int SCTP_ERROR (int ) ;
 int SCTP_ERROR_ASCONF_ACK ;
 int SCTP_ERROR_RSRC_LOW ;
 int SCTP_EVENT_TIMEOUT_T4_RTO ;
 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_NULL () ;
 int SCTP_PERR (int ) ;
 int SCTP_TO (int ) ;
 scalar_t__ ntohl (int ) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_init_cause (struct sctp_chunk*,int ,int ) ;
 struct sctp_chunk* sctp_make_abort (struct sctp_association const*,struct sctp_chunk*,int) ;
 int sctp_process_asconf_ack (struct sctp_association*,struct sctp_chunk*) ;
 int sctp_send_next_asconf (struct net*,struct sctp_endpoint const*,struct sctp_association*,union sctp_subtype const,struct sctp_cmd_seq*) ;
 int sctp_sf_discard_chunk (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_pdiscard (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_violation_chunklen (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_violation_paramlen (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,void*,struct sctp_cmd_seq*) ;
 int sctp_verify_asconf (struct sctp_association const*,struct sctp_chunk*,int,struct sctp_paramhdr**) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;

enum sctp_disposition sctp_sf_do_asconf_ack(struct net *net,
         const struct sctp_endpoint *ep,
         const struct sctp_association *asoc,
         const union sctp_subtype type,
         void *arg,
         struct sctp_cmd_seq *commands)
{
 struct sctp_chunk *last_asconf = asoc->addip_last_asconf;
 struct sctp_paramhdr *err_param = ((void*)0);
 struct sctp_chunk *asconf_ack = arg;
 struct sctp_addiphdr *addip_hdr;
 __u32 sent_serial, rcvd_serial;
 struct sctp_chunk *abort;

 if (!sctp_vtag_verify(asconf_ack, asoc)) {
  sctp_add_cmd_sf(commands, SCTP_CMD_REPORT_BAD_TAG,
    SCTP_NULL());
  return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);
 }







 if (!asoc->peer.asconf_capable ||
     (!net->sctp.addip_noauth && !asconf_ack->auth))
  return sctp_sf_discard_chunk(net, ep, asoc, type, arg,
          commands);


 if (!sctp_chunk_length_valid(asconf_ack,
         sizeof(struct sctp_addip_chunk)))
  return sctp_sf_violation_chunklen(net, ep, asoc, type, arg,
        commands);

 addip_hdr = (struct sctp_addiphdr *)asconf_ack->skb->data;
 rcvd_serial = ntohl(addip_hdr->serial);


 if (!sctp_verify_asconf(asoc, asconf_ack, 0, &err_param))
  return sctp_sf_violation_paramlen(net, ep, asoc, type, arg,
      (void *)err_param, commands);

 if (last_asconf) {
  addip_hdr = (struct sctp_addiphdr *)last_asconf->subh.addip_hdr;
  sent_serial = ntohl(addip_hdr->serial);
 } else {
  sent_serial = asoc->addip_serial - 1;
 }







 if (ADDIP_SERIAL_gte(rcvd_serial, sent_serial + 1) &&
     !(asoc->addip_last_asconf)) {
  abort = sctp_make_abort(asoc, asconf_ack,
     sizeof(struct sctp_errhdr));
  if (abort) {
   sctp_init_cause(abort, SCTP_ERROR_ASCONF_ACK, 0);
   sctp_add_cmd_sf(commands, SCTP_CMD_REPLY,
     SCTP_CHUNK(abort));
  }



  sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
    SCTP_TO(SCTP_EVENT_TIMEOUT_T4_RTO));
  sctp_add_cmd_sf(commands, SCTP_CMD_DISCARD_PACKET, SCTP_NULL());
  sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR,
    SCTP_ERROR(ECONNABORTED));
  sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_FAILED,
    SCTP_PERR(SCTP_ERROR_ASCONF_ACK));
  SCTP_INC_STATS(net, SCTP_MIB_ABORTEDS);
  SCTP_DEC_STATS(net, SCTP_MIB_CURRESTAB);
  return SCTP_DISPOSITION_ABORT;
 }

 if ((rcvd_serial == sent_serial) && asoc->addip_last_asconf) {
  sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
    SCTP_TO(SCTP_EVENT_TIMEOUT_T4_RTO));

  if (!sctp_process_asconf_ack((struct sctp_association *)asoc,
          asconf_ack))
   return sctp_send_next_asconf(net, ep,
     (struct sctp_association *)asoc,
       type, commands);

  abort = sctp_make_abort(asoc, asconf_ack,
     sizeof(struct sctp_errhdr));
  if (abort) {
   sctp_init_cause(abort, SCTP_ERROR_RSRC_LOW, 0);
   sctp_add_cmd_sf(commands, SCTP_CMD_REPLY,
     SCTP_CHUNK(abort));
  }



  sctp_add_cmd_sf(commands, SCTP_CMD_DISCARD_PACKET, SCTP_NULL());
  sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR,
    SCTP_ERROR(ECONNABORTED));
  sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_FAILED,
    SCTP_PERR(SCTP_ERROR_ASCONF_ACK));
  SCTP_INC_STATS(net, SCTP_MIB_ABORTEDS);
  SCTP_DEC_STATS(net, SCTP_MIB_CURRESTAB);
  return SCTP_DISPOSITION_ABORT;
 }

 return SCTP_DISPOSITION_DISCARD;
}
