
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_2__ {int bind_addr; } ;
struct sctp_association {TYPE_1__ base; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int GFP_ATOMIC ;
 int SCTP_ASOC (struct sctp_association*) ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_INIT_CHOOSE_TRANSPORT ;
 int SCTP_CMD_NEW_ASOC ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_TIMER_START ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_EVENT_TIMEOUT_T1_INIT ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_COOKIE_WAIT ;
 int SCTP_TO (int ) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 struct sctp_chunk* sctp_make_init (struct sctp_association const*,int *,int ,int ) ;

enum sctp_disposition sctp_sf_do_prm_asoc(struct net *net,
       const struct sctp_endpoint *ep,
       const struct sctp_association *asoc,
       const union sctp_subtype type,
       void *arg,
       struct sctp_cmd_seq *commands)
{
 struct sctp_association *my_asoc;
 struct sctp_chunk *repl;





 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_COOKIE_WAIT));
 repl = sctp_make_init(asoc, &asoc->base.bind_addr, GFP_ATOMIC, 0);
 if (!repl)
  goto nomem;


 sctp_add_cmd_sf(commands, SCTP_CMD_INIT_CHOOSE_TRANSPORT,
   SCTP_CHUNK(repl));




 my_asoc = (struct sctp_association *)asoc;
 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_ASOC, SCTP_ASOC(my_asoc));




 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_START,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T1_INIT));
 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(repl));
 return SCTP_DISPOSITION_CONSUME;

nomem:
 return SCTP_DISPOSITION_NOMEM;
}
