
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {scalar_t__ input; scalar_t__ hid; } ;


 int hid_destroy_device (scalar_t__) ;
 int input_unregister_device (scalar_t__) ;

__attribute__((used)) static void hidp_session_dev_del(struct hidp_session *session)
{
 if (session->hid)
  hid_destroy_device(session->hid);
 else if (session->input)
  input_unregister_device(session->input);
}
