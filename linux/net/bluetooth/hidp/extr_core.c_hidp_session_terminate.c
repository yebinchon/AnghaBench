
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int terminate; } ;


 int atomic_inc (int *) ;
 int hidp_session_wq ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void hidp_session_terminate(struct hidp_session *session)
{
 atomic_inc(&session->terminate);




 wake_up_interruptible(&hidp_session_wq);
}
