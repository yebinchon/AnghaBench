
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_REPLY ;
 int SCTP_DISPOSITION_CONSUME ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;

enum sctp_disposition sctp_sf_do_prm_reconf(struct net *net,
         const struct sctp_endpoint *ep,
         const struct sctp_association *asoc,
         const union sctp_subtype type,
         void *arg,
         struct sctp_cmd_seq *commands)
{
 struct sctp_chunk *chunk = arg;

 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(chunk));
 return SCTP_DISPOSITION_CONSUME;
}
