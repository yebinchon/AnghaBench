
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;


 int EINVAL ;




 int MAY_READ ;
 int MAY_READWRITE ;





 int smk_curacc_shm (struct kern_ipc_perm*,int) ;

__attribute__((used)) static int smack_shm_shmctl(struct kern_ipc_perm *isp, int cmd)
{
 int may;

 switch (cmd) {
 case 133:
 case 130:
 case 129:
  may = MAY_READ;
  break;
 case 134:
 case 131:
 case 128:
 case 135:
  may = MAY_READWRITE;
  break;
 case 136:
 case 132:



  return 0;
 default:
  return -EINVAL;
 }
 return smk_curacc_shm(isp, may);
}
