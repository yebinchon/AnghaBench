
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_paramhdr {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {int source; int dest; int * transport; int has_asconf; TYPE_2__* skb; int auth; } ;
struct TYPE_6__ {scalar_t__ addip_serial; int asconf_capable; } ;
struct sctp_association {int * new_transport; TYPE_3__ peer; } ;
struct sctp_addiphdr {int serial; } ;
struct sctp_addip_chunk {int dummy; } ;
struct TYPE_4__ {int addip_noauth; } ;
struct net {TYPE_1__ sctp; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
typedef scalar_t__ __u32 ;
struct TYPE_5__ {scalar_t__ data; } ;


 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_REPORT_BAD_TAG ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_DISCARD ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_NULL () ;
 scalar_t__ ntohl (int ) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 int sctp_assoc_clean_asconf_ack_cache (struct sctp_association const*) ;
 struct sctp_chunk* sctp_assoc_lookup_asconf_ack (struct sctp_association const*,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 struct sctp_chunk* sctp_process_asconf (struct sctp_association*,struct sctp_chunk*) ;
 int sctp_sf_discard_chunk (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_heartbeat (struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,int *,struct sctp_cmd_seq*) ;
 int sctp_sf_pdiscard (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_violation_chunklen (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_violation_paramlen (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,void*,struct sctp_cmd_seq*) ;
 int sctp_verify_asconf (struct sctp_association const*,struct sctp_chunk*,int,struct sctp_paramhdr**) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;

enum sctp_disposition sctp_sf_do_asconf(struct net *net,
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const union sctp_subtype type,
     void *arg,
     struct sctp_cmd_seq *commands)
{
 struct sctp_paramhdr *err_param = ((void*)0);
 struct sctp_chunk *asconf_ack = ((void*)0);
 struct sctp_chunk *chunk = arg;
 struct sctp_addiphdr *hdr;
 __u32 serial;

 if (!sctp_vtag_verify(chunk, asoc)) {
  sctp_add_cmd_sf(commands, SCTP_CMD_REPORT_BAD_TAG,
    SCTP_NULL());
  return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);
 }







 if (!asoc->peer.asconf_capable ||
     (!net->sctp.addip_noauth && !chunk->auth))
  return sctp_sf_discard_chunk(net, ep, asoc, type, arg,
          commands);


 if (!sctp_chunk_length_valid(chunk, sizeof(struct sctp_addip_chunk)))
  return sctp_sf_violation_chunklen(net, ep, asoc, type, arg,
        commands);

 hdr = (struct sctp_addiphdr *)chunk->skb->data;
 serial = ntohl(hdr->serial);


 if (!sctp_verify_asconf(asoc, chunk, 1, &err_param))
  return sctp_sf_violation_paramlen(net, ep, asoc, type, arg,
        (void *)err_param, commands);





 if (serial == asoc->peer.addip_serial + 1) {



  if (!chunk->has_asconf)
   sctp_assoc_clean_asconf_ack_cache(asoc);
  asconf_ack = sctp_process_asconf((struct sctp_association *)
       asoc, chunk);
  if (!asconf_ack)
   return SCTP_DISPOSITION_NOMEM;
 } else if (serial < asoc->peer.addip_serial + 1) {
  asconf_ack = sctp_assoc_lookup_asconf_ack(asoc, hdr->serial);
  if (!asconf_ack)
   return SCTP_DISPOSITION_DISCARD;





  asconf_ack->transport = ((void*)0);
 } else {



  return SCTP_DISPOSITION_DISCARD;
 }
 asconf_ack->dest = chunk->source;
 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(asconf_ack));
 if (asoc->new_transport) {
  sctp_sf_heartbeat(ep, asoc, type, asoc->new_transport, commands);
  ((struct sctp_association *)asoc)->new_transport = ((void*)0);
 }

 return SCTP_DISPOSITION_CONSUME;
}
