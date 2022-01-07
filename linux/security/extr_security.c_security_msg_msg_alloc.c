
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_msg {int dummy; } ;


 int call_int_hook (int ,int ,struct msg_msg*) ;
 int lsm_msg_msg_alloc (struct msg_msg*) ;
 int msg_msg_alloc_security ;
 int security_msg_msg_free (struct msg_msg*) ;
 scalar_t__ unlikely (int) ;

int security_msg_msg_alloc(struct msg_msg *msg)
{
 int rc = lsm_msg_msg_alloc(msg);

 if (unlikely(rc))
  return rc;
 rc = call_int_hook(msg_msg_alloc_security, 0, msg);
 if (unlikely(rc))
  security_msg_msg_free(msg);
 return rc;
}
