
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;


 int EINVAL ;




 int MAY_READ ;
 int MAY_READWRITE ;



 int smk_curacc_msq (struct kern_ipc_perm*,int) ;

__attribute__((used)) static int smack_msg_queue_msgctl(struct kern_ipc_perm *isp, int cmd)
{
 int may;

 switch (cmd) {
 case 131:
 case 129:
 case 128:
  may = MAY_READ;
  break;
 case 132:
 case 133:
  may = MAY_READWRITE;
  break;
 case 134:
 case 130:



  return 0;
 default:
  return -EINVAL;
 }

 return smk_curacc_msq(isp, may);
}
