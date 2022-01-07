
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* driver_name; int cnr; int proc_show; int procinfo; int send_message; int release_appl; int register_appl; int reset_ctr; int load_firmware; int name; struct cmtp_session* driverdata; int owner; } ;
struct cmtp_session {int ncontroller; int num; TYPE_1__ ctrl; int name; int wait; } ;


 int BT_DBG (char*,struct cmtp_session*,...) ;
 int BT_ERR (char*) ;
 int BT_INFO (char*,...) ;
 int CAPI_FUNCTION_GET_MANUFACTURER ;
 int CAPI_FUNCTION_GET_PROFILE ;
 int CAPI_FUNCTION_GET_SERIAL_NUMBER ;
 int CAPI_FUNCTION_GET_VERSION ;
 int CAPI_REQ ;
 int CMTP_INITIAL_MSGNUM ;
 int CMTP_INTEROP_TIMEOUT ;
 int EBUSY ;
 int ENODEV ;
 int ETIMEDOUT ;
 int THIS_MODULE ;
 scalar_t__ attach_capi_ctr (TYPE_1__*) ;
 int capimsg_setu32 (unsigned char*,int ,int) ;
 int cmtp_load_firmware ;
 int cmtp_msgnum_get (struct cmtp_session*) ;
 int cmtp_proc_show ;
 int cmtp_procinfo ;
 int cmtp_register_appl ;
 int cmtp_release_appl ;
 int cmtp_reset_ctr ;
 int cmtp_send_interopmsg (struct cmtp_session*,int ,int,int ,int ,unsigned char*,int) ;
 int cmtp_send_message ;
 int strcpy (int ,int ) ;
 long wait_event_interruptible_timeout (int ,int,int ) ;

int cmtp_attach_device(struct cmtp_session *session)
{
 unsigned char buf[4];
 long ret;

 BT_DBG("session %p", session);

 capimsg_setu32(buf, 0, 0);

 cmtp_send_interopmsg(session, CAPI_REQ, 0xffff, CMTP_INITIAL_MSGNUM,
    CAPI_FUNCTION_GET_PROFILE, buf, 4);

 ret = wait_event_interruptible_timeout(session->wait,
   session->ncontroller, CMTP_INTEROP_TIMEOUT);

 BT_INFO("Found %d CAPI controller(s) on device %s", session->ncontroller, session->name);

 if (!ret)
  return -ETIMEDOUT;

 if (!session->ncontroller)
  return -ENODEV;

 if (session->ncontroller > 1)
  BT_INFO("Setting up only CAPI controller 1");

 session->ctrl.owner = THIS_MODULE;
 session->ctrl.driverdata = session;
 strcpy(session->ctrl.name, session->name);

 session->ctrl.driver_name = "cmtp";
 session->ctrl.load_firmware = cmtp_load_firmware;
 session->ctrl.reset_ctr = cmtp_reset_ctr;
 session->ctrl.register_appl = cmtp_register_appl;
 session->ctrl.release_appl = cmtp_release_appl;
 session->ctrl.send_message = cmtp_send_message;

 session->ctrl.procinfo = cmtp_procinfo;
 session->ctrl.proc_show = cmtp_proc_show;

 if (attach_capi_ctr(&session->ctrl) < 0) {
  BT_ERR("Can't attach new controller");
  return -EBUSY;
 }

 session->num = session->ctrl.cnr;

 BT_DBG("session %p num %d", session, session->num);

 capimsg_setu32(buf, 0, 1);

 cmtp_send_interopmsg(session, CAPI_REQ, 0xffff, cmtp_msgnum_get(session),
    CAPI_FUNCTION_GET_MANUFACTURER, buf, 4);

 cmtp_send_interopmsg(session, CAPI_REQ, 0xffff, cmtp_msgnum_get(session),
    CAPI_FUNCTION_GET_VERSION, buf, 4);

 cmtp_send_interopmsg(session, CAPI_REQ, 0xffff, cmtp_msgnum_get(session),
    CAPI_FUNCTION_GET_SERIAL_NUMBER, buf, 4);

 cmtp_send_interopmsg(session, CAPI_REQ, 0xffff, cmtp_msgnum_get(session),
    CAPI_FUNCTION_GET_PROFILE, buf, 4);

 return 0;
}
