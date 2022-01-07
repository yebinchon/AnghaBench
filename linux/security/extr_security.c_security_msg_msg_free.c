
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_msg {int * security; } ;


 int call_void_hook (int ,struct msg_msg*) ;
 int kfree (int *) ;
 int msg_msg_free_security ;

void security_msg_msg_free(struct msg_msg *msg)
{
 call_void_hook(msg_msg_free_security, msg);
 kfree(msg->security);
 msg->security = ((void*)0);
}
