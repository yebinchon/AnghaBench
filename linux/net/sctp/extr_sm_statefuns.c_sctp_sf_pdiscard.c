
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int SCTP_CMD_DISCARD_PACKET ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_IN_PKT_DISCARDS ;
 int SCTP_NULL () ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;

enum sctp_disposition sctp_sf_pdiscard(struct net *net,
           const struct sctp_endpoint *ep,
           const struct sctp_association *asoc,
           const union sctp_subtype type,
           void *arg, struct sctp_cmd_seq *commands)
{
 SCTP_INC_STATS(net, SCTP_MIB_IN_PKT_DISCARDS);
 sctp_add_cmd_sf(commands, SCTP_CMD_DISCARD_PACKET, SCTP_NULL());

 return SCTP_DISPOSITION_CONSUME;
}
