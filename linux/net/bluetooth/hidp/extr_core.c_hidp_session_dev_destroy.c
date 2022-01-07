
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hidp_session {int * rd_data; scalar_t__ input; TYPE_1__* hid; } ;
struct TYPE_2__ {int dev; } ;


 int input_put_device (scalar_t__) ;
 int kfree (int *) ;
 int put_device (int *) ;

__attribute__((used)) static void hidp_session_dev_destroy(struct hidp_session *session)
{
 if (session->hid)
  put_device(&session->hid->dev);
 else if (session->input)
  input_put_device(session->input);

 kfree(session->rd_data);
 session->rd_data = ((void*)0);
}
