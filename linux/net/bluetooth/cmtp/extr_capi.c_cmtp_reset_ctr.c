
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmtp_session {int task; int terminate; } ;
struct capi_ctr {struct cmtp_session* driverdata; } ;


 int BT_DBG (char*,struct capi_ctr*) ;
 int atomic_inc (int *) ;
 int capi_ctr_down (struct capi_ctr*) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void cmtp_reset_ctr(struct capi_ctr *ctrl)
{
 struct cmtp_session *session = ctrl->driverdata;

 BT_DBG("ctrl %p", ctrl);

 capi_ctr_down(ctrl);

 atomic_inc(&session->terminate);
 wake_up_process(session->task);
}
