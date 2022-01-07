
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_msg {int dummy; } ;


 int ENOSYS ;
 struct msg_msg* ERR_PTR (int ) ;

struct msg_msg *copy_msg(struct msg_msg *src, struct msg_msg *dst)
{
 return ERR_PTR(-ENOSYS);
}
