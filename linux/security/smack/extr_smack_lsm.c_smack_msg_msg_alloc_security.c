
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smack_known {int dummy; } ;
struct msg_msg {int dummy; } ;


 struct smack_known** smack_msg_msg (struct msg_msg*) ;
 struct smack_known* smk_of_current () ;

__attribute__((used)) static int smack_msg_msg_alloc_security(struct msg_msg *msg)
{
 struct smack_known **blob = smack_msg_msg(msg);

 *blob = smk_of_current();
 return 0;
}
