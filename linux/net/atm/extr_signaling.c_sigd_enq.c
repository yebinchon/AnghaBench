
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_atmsvc {int dummy; } ;
struct sockaddr_atmpvc {int dummy; } ;
struct atm_vcc {int qos; } ;
typedef enum atmsvc_msg_type { ____Placeholder_atmsvc_msg_type } atmsvc_msg_type ;


 int sigd_enq2 (struct atm_vcc*,int,struct atm_vcc*,struct sockaddr_atmpvc const*,struct sockaddr_atmsvc const*,int *,int ) ;

void sigd_enq(struct atm_vcc *vcc, enum atmsvc_msg_type type,
       struct atm_vcc *listen_vcc, const struct sockaddr_atmpvc *pvc,
       const struct sockaddr_atmsvc *svc)
{
 sigd_enq2(vcc, type, listen_vcc, pvc, svc, vcc ? &vcc->qos : ((void*)0), 0);

}
