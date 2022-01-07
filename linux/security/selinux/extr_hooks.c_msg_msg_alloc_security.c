
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_security_struct {int sid; } ;
struct msg_msg {int dummy; } ;


 int SECINITSID_UNLABELED ;
 struct msg_security_struct* selinux_msg_msg (struct msg_msg*) ;

__attribute__((used)) static int msg_msg_alloc_security(struct msg_msg *msg)
{
 struct msg_security_struct *msec;

 msec = selinux_msg_msg(msg);
 msec->sid = SECINITSID_UNLABELED;

 return 0;
}
