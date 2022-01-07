
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ traffic_class; } ;
struct atm_qos {TYPE_1__ rxtp; TYPE_1__ txtp; } ;


 scalar_t__ ATM_ANYCLASS ;
 int EINVAL ;
 int check_tp (TYPE_1__*) ;

__attribute__((used)) static int check_qos(const struct atm_qos *qos)
{
 int error;

 if (!qos->txtp.traffic_class && !qos->rxtp.traffic_class)
  return -EINVAL;
 if (qos->txtp.traffic_class != qos->rxtp.traffic_class &&
     qos->txtp.traffic_class && qos->rxtp.traffic_class &&
     qos->txtp.traffic_class != ATM_ANYCLASS &&
     qos->rxtp.traffic_class != ATM_ANYCLASS)
  return -EINVAL;
 error = check_tp(&qos->txtp);
 if (error)
  return error;
 return check_tp(&qos->rxtp);
}
