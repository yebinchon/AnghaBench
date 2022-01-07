
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ippathid; int ipuser; } ;
union iucv_param {TYPE_1__ ctrl; } ;
typedef int u8 ;
typedef int u16 ;


 int IUCV_SEVER ;
 int iucv_call_b2f0 (int ,union iucv_param*) ;
 union iucv_param** iucv_param_irq ;
 int memcpy (int ,int *,int) ;
 int memset (union iucv_param*,int ,int) ;
 size_t smp_processor_id () ;

__attribute__((used)) static int iucv_sever_pathid(u16 pathid, u8 *userdata)
{
 union iucv_param *parm;

 parm = iucv_param_irq[smp_processor_id()];
 memset(parm, 0, sizeof(union iucv_param));
 if (userdata)
  memcpy(parm->ctrl.ipuser, userdata, sizeof(parm->ctrl.ipuser));
 parm->ctrl.ippathid = pathid;
 return iucv_call_b2f0(IUCV_SEVER, parm);
}
