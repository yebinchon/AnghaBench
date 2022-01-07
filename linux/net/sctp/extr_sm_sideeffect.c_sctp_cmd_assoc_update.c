
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_errhdr {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_2__ {int sk; } ;
struct sctp_association {TYPE_1__ base; } ;
struct net {int dummy; } ;


 int ECONNABORTED ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_ASSOC_FAILED ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_DEC_STATS (struct net*,int ) ;
 int SCTP_ERROR (int ) ;
 int SCTP_ERROR_RSRC_LOW ;
 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_PERR (int ) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 int sctp_assoc_update (struct sctp_association*,struct sctp_association*) ;
 int sctp_init_cause (struct sctp_chunk*,int ,int ) ;
 struct sctp_chunk* sctp_make_abort (struct sctp_association*,int *,int) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static void sctp_cmd_assoc_update(struct sctp_cmd_seq *cmds,
      struct sctp_association *asoc,
      struct sctp_association *new)
{
 struct net *net = sock_net(asoc->base.sk);
 struct sctp_chunk *abort;

 if (!sctp_assoc_update(asoc, new))
  return;

 abort = sctp_make_abort(asoc, ((void*)0), sizeof(struct sctp_errhdr));
 if (abort) {
  sctp_init_cause(abort, SCTP_ERROR_RSRC_LOW, 0);
  sctp_add_cmd_sf(cmds, SCTP_CMD_REPLY, SCTP_CHUNK(abort));
 }
 sctp_add_cmd_sf(cmds, SCTP_CMD_SET_SK_ERR, SCTP_ERROR(ECONNABORTED));
 sctp_add_cmd_sf(cmds, SCTP_CMD_ASSOC_FAILED,
   SCTP_PERR(SCTP_ERROR_RSRC_LOW));
 SCTP_INC_STATS(net, SCTP_MIB_ABORTEDS);
 SCTP_DEC_STATS(net, SCTP_MIB_CURRESTAB);
}
