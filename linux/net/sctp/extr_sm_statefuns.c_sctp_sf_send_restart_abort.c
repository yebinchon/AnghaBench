
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union sctp_addr_param {int dummy; } sctp_addr_param ;
struct TYPE_4__ {int sin_family; } ;
union sctp_addr {TYPE_1__ v4; } ;
struct sctp_packet {int dummy; } ;
struct sctp_errhdr {int length; int cause; scalar_t__ variable; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_af {int (* to_addr_param ) (union sctp_addr*,union sctp_addr_param*) ;} ;
struct TYPE_5__ {int ctl_sock; } ;
struct net {TYPE_2__ sctp; } ;
struct TYPE_6__ {struct sctp_endpoint* ep; } ;


 int SCTP_CMD_DISCARD_PACKET ;
 int SCTP_CMD_SEND_PKT ;
 int SCTP_ERROR_RESTART ;
 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_OUTCTRLCHUNKS ;
 int SCTP_NULL () ;
 int SCTP_PACKET (struct sctp_packet*) ;
 int htons (int) ;
 struct sctp_packet* sctp_abort_pkt_new (struct net*,struct sctp_endpoint*,int *,struct sctp_chunk*,struct sctp_errhdr*,int) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 struct sctp_af* sctp_get_af_specific (int ) ;
 TYPE_3__* sctp_sk (int ) ;
 int stub1 (union sctp_addr*,union sctp_addr_param*) ;

__attribute__((used)) static int sctp_sf_send_restart_abort(struct net *net, union sctp_addr *ssa,
          struct sctp_chunk *init,
          struct sctp_cmd_seq *commands)
{
 struct sctp_af *af = sctp_get_af_specific(ssa->v4.sin_family);
 union sctp_addr_param *addrparm;
 struct sctp_errhdr *errhdr;
 char buffer[sizeof(*errhdr) + sizeof(*addrparm)];
 struct sctp_endpoint *ep;
 struct sctp_packet *pkt;
 int len;




 errhdr = (struct sctp_errhdr *)buffer;
 addrparm = (union sctp_addr_param *)errhdr->variable;


 len = af->to_addr_param(ssa, addrparm);
 len += sizeof(*errhdr);

 errhdr->cause = SCTP_ERROR_RESTART;
 errhdr->length = htons(len);


 ep = sctp_sk(net->sctp.ctl_sock)->ep;




 pkt = sctp_abort_pkt_new(net, ep, ((void*)0), init, errhdr, len);

 if (!pkt)
  goto out;
 sctp_add_cmd_sf(commands, SCTP_CMD_SEND_PKT, SCTP_PACKET(pkt));

 SCTP_INC_STATS(net, SCTP_MIB_OUTCTRLCHUNKS);


 sctp_add_cmd_sf(commands, SCTP_CMD_DISCARD_PACKET, SCTP_NULL());

out:



 return 0;
}
