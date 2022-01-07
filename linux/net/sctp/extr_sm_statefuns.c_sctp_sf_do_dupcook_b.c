
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sctp_init_chunk {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct TYPE_7__ {TYPE_2__* cookie_hdr; } ;
struct sctp_chunk {TYPE_3__ subh; } ;
struct TYPE_8__ {int auth_capable; scalar_t__ adaptation_ind; } ;
struct sctp_association {TYPE_4__ peer; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
struct TYPE_5__ {struct sctp_init_chunk* peer_init; } ;
struct TYPE_6__ {TYPE_1__ c; } ;


 int GFP_ATOMIC ;
 int SCTP_ASOC (struct sctp_association*) ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_ADAPTATION_IND ;
 int SCTP_CMD_ASSOC_CHANGE ;
 int SCTP_CMD_HB_TIMERS_START ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_PEER_NO_AUTH ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_UPDATE_ASSOC ;
 int SCTP_COMM_UP ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_DISCARD ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_INC_STATS (struct net*,int ) ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_NULL () ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_ESTABLISHED ;
 int SCTP_U8 (int ) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 scalar_t__ sctp_auth_asoc_init_active_key (struct sctp_association*,int ) ;
 int sctp_auth_chunk_verify (struct net*,struct sctp_chunk*,struct sctp_association*) ;
 struct sctp_chunk* sctp_make_cookie_ack (struct sctp_association*,struct sctp_chunk*) ;
 int sctp_process_init (struct sctp_association*,struct sctp_chunk*,int ,struct sctp_init_chunk*,int ) ;
 int sctp_source (struct sctp_chunk*) ;

__attribute__((used)) static enum sctp_disposition sctp_sf_do_dupcook_b(
     struct net *net,
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     struct sctp_chunk *chunk,
     struct sctp_cmd_seq *commands,
     struct sctp_association *new_asoc)
{
 struct sctp_init_chunk *peer_init;
 struct sctp_chunk *repl;




 peer_init = &chunk->subh.cookie_hdr->c.peer_init[0];
 if (!sctp_process_init(new_asoc, chunk, sctp_source(chunk), peer_init,
          GFP_ATOMIC))
  goto nomem;

 if (sctp_auth_asoc_init_active_key(new_asoc, GFP_ATOMIC))
  goto nomem;

 if (!sctp_auth_chunk_verify(net, chunk, new_asoc))
  return SCTP_DISPOSITION_DISCARD;


 sctp_add_cmd_sf(commands, SCTP_CMD_UPDATE_ASSOC, SCTP_ASOC(new_asoc));
 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_ESTABLISHED));
 SCTP_INC_STATS(net, SCTP_MIB_CURRESTAB);
 sctp_add_cmd_sf(commands, SCTP_CMD_HB_TIMERS_START, SCTP_NULL());

 repl = sctp_make_cookie_ack(new_asoc, chunk);
 if (!repl)
  goto nomem;

 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(repl));
 sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_CHANGE, SCTP_U8(SCTP_COMM_UP));
 if (asoc->peer.adaptation_ind)
  sctp_add_cmd_sf(commands, SCTP_CMD_ADAPTATION_IND, SCTP_NULL());

 if (!asoc->peer.auth_capable)
  sctp_add_cmd_sf(commands, SCTP_CMD_PEER_NO_AUTH, SCTP_NULL());

 return SCTP_DISPOSITION_CONSUME;

nomem:
 return SCTP_DISPOSITION_NOMEM;
}
