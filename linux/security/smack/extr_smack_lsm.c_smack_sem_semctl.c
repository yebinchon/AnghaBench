
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;


 int EINVAL ;
 int MAY_READ ;
 int MAY_READWRITE ;





 int smk_curacc_sem (struct kern_ipc_perm*,int) ;

__attribute__((used)) static int smack_sem_semctl(struct kern_ipc_perm *isp, int cmd)
{
 int may;

 switch (cmd) {
 case 139:
 case 140:
 case 137:
 case 138:
 case 141:
 case 133:
 case 131:
 case 130:
  may = MAY_READ;
  break;
 case 128:
 case 129:
 case 135:
 case 134:
  may = MAY_READWRITE;
  break;
 case 136:
 case 132:



  return 0;
 default:
  return -EINVAL;
 }

 return smk_curacc_sem(isp, may);
}
