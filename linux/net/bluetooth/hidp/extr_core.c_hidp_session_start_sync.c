
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hidp_session {int state; int state_queue; int task; TYPE_3__* input; TYPE_1__* hid; } ;
struct TYPE_5__ {unsigned int vendor; unsigned int product; } ;
struct TYPE_6__ {TYPE_2__ id; } ;
struct TYPE_4__ {unsigned int vendor; unsigned int product; } ;


 scalar_t__ HIDP_SESSION_IDLING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ atomic_read (int *) ;
 int hidp_session_thread ;
 int kthread_run (int ,struct hidp_session*,char*,unsigned int,unsigned int) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int hidp_session_start_sync(struct hidp_session *session)
{
 unsigned int vendor, product;

 if (session->hid) {
  vendor = session->hid->vendor;
  product = session->hid->product;
 } else if (session->input) {
  vendor = session->input->id.vendor;
  product = session->input->id.product;
 } else {
  vendor = 0x0000;
  product = 0x0000;
 }

 session->task = kthread_run(hidp_session_thread, session,
        "khidpd_%04x%04x", vendor, product);
 if (IS_ERR(session->task))
  return PTR_ERR(session->task);

 while (atomic_read(&session->state) <= HIDP_SESSION_IDLING)
  wait_event(session->state_queue,
      atomic_read(&session->state) > HIDP_SESSION_IDLING);

 return 0;
}
