
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selnl_msg_setenforce {int dummy; } ;
struct selnl_msg_policyload {int dummy; } ;


 int BUG () ;



__attribute__((used)) static int selnl_msglen(int msgtype)
{
 int ret = 0;

 switch (msgtype) {
 case 128:
  ret = sizeof(struct selnl_msg_setenforce);
  break;

 case 129:
  ret = sizeof(struct selnl_msg_policyload);
  break;

 default:
  BUG();
 }
 return ret;
}
