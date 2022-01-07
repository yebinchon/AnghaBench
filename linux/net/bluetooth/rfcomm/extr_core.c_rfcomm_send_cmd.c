
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_session {int dummy; } ;
struct rfcomm_cmd {int ctrl; } ;


 int BT_DBG (char*,struct rfcomm_session*,int ) ;
 int rfcomm_send_frame (struct rfcomm_session*,void*,int) ;

__attribute__((used)) static int rfcomm_send_cmd(struct rfcomm_session *s, struct rfcomm_cmd *cmd)
{
 BT_DBG("%p cmd %u", s, cmd->ctrl);

 return rfcomm_send_frame(s, (void *) cmd, sizeof(*cmd));
}
