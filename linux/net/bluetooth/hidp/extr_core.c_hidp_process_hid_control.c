
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int intr_transmit; int ctrl_transmit; } ;


 int BT_DBG (char*,struct hidp_session*,unsigned char) ;
 unsigned char HIDP_CTRL_VIRTUAL_CABLE_UNPLUG ;
 int hidp_session_terminate (struct hidp_session*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void hidp_process_hid_control(struct hidp_session *session,
     unsigned char param)
{
 BT_DBG("session %p param 0x%02x", session, param);

 if (param == HIDP_CTRL_VIRTUAL_CABLE_UNPLUG) {

  skb_queue_purge(&session->ctrl_transmit);
  skb_queue_purge(&session->intr_transmit);

  hidp_session_terminate(session);
 }
}
