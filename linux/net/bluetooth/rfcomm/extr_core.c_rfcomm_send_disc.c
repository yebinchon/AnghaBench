
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rfcomm_session {int initiator; } ;
struct rfcomm_cmd {int fcs; int len; int ctrl; int addr; } ;


 int BT_DBG (char*,struct rfcomm_session*,int ) ;
 int RFCOMM_DISC ;
 int __addr (int ,int ) ;
 int __ctrl (int ,int) ;
 int __fcs2 (int *) ;
 int __len8 (int ) ;
 int rfcomm_send_cmd (struct rfcomm_session*,struct rfcomm_cmd*) ;

__attribute__((used)) static int rfcomm_send_disc(struct rfcomm_session *s, u8 dlci)
{
 struct rfcomm_cmd cmd;

 BT_DBG("%p dlci %d", s, dlci);

 cmd.addr = __addr(s->initiator, dlci);
 cmd.ctrl = __ctrl(RFCOMM_DISC, 1);
 cmd.len = __len8(0);
 cmd.fcs = __fcs2((u8 *) &cmd);

 return rfcomm_send_cmd(s, &cmd);
}
