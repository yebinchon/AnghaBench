
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmtp_session {int ctrl; } ;


 int BT_DBG (char*,struct cmtp_session*) ;
 int detach_capi_ctr (int *) ;

void cmtp_detach_device(struct cmtp_session *session)
{
 BT_DBG("session %p", session);

 detach_capi_ctr(&session->ctrl);
}
