
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_transport {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_RTO_PENDING ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_TRANSPORT (struct sctp_transport*) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 struct sctp_chunk* sctp_make_heartbeat (struct sctp_association const*,struct sctp_transport*) ;

__attribute__((used)) static enum sctp_disposition sctp_sf_heartbeat(
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const union sctp_subtype type,
     void *arg,
     struct sctp_cmd_seq *commands)
{
 struct sctp_transport *transport = (struct sctp_transport *) arg;
 struct sctp_chunk *reply;


 reply = sctp_make_heartbeat(asoc, transport);
 if (!reply)
  return SCTP_DISPOSITION_NOMEM;




 sctp_add_cmd_sf(commands, SCTP_CMD_RTO_PENDING,
   SCTP_TRANSPORT(transport));

 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(reply));
 return SCTP_DISPOSITION_CONSUME;
}
