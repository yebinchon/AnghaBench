
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hidp_session {scalar_t__ input; TYPE_1__* hid; } ;
struct TYPE_2__ {int dev; } ;


 int get_device (int *) ;
 int hid_add_device (TYPE_1__*) ;
 int input_get_device (scalar_t__) ;
 int input_register_device (scalar_t__) ;

__attribute__((used)) static int hidp_session_dev_add(struct hidp_session *session)
{
 int ret;






 if (session->hid) {
  ret = hid_add_device(session->hid);
  if (ret)
   return ret;
  get_device(&session->hid->dev);
 } else if (session->input) {
  ret = input_register_device(session->input);
  if (ret)
   return ret;
  input_get_device(session->input);
 }

 return 0;
}
