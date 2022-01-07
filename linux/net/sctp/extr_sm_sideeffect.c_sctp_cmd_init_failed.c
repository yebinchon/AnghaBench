
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_ulpevent {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct TYPE_2__ {unsigned int error; } ;
struct sctp_association {TYPE_1__ outqueue; } ;
typedef int __u16 ;


 int GFP_ATOMIC ;
 int SCTP_CANT_STR_ASSOC ;
 int SCTP_CMD_DELETE_TCB ;
 int SCTP_CMD_EVENT_ULP ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_NULL () ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_CLOSED ;
 int SCTP_ULPEVENT (struct sctp_ulpevent*) ;
 int sctp_add_cmd_sf (struct sctp_cmd_seq*,int ,int ) ;
 struct sctp_ulpevent* sctp_ulpevent_make_assoc_change (struct sctp_association*,int ,int ,int ,int ,int ,int *,int ) ;

__attribute__((used)) static void sctp_cmd_init_failed(struct sctp_cmd_seq *commands,
     struct sctp_association *asoc,
     unsigned int error)
{
 struct sctp_ulpevent *event;

 event = sctp_ulpevent_make_assoc_change(asoc, 0, SCTP_CANT_STR_ASSOC,
      (__u16)error, 0, 0, ((void*)0),
      GFP_ATOMIC);

 if (event)
  sctp_add_cmd_sf(commands, SCTP_CMD_EVENT_ULP,
    SCTP_ULPEVENT(event));

 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_CLOSED));


 asoc->outqueue.error = error;
 sctp_add_cmd_sf(commands, SCTP_CMD_DELETE_TCB, SCTP_NULL());
}
