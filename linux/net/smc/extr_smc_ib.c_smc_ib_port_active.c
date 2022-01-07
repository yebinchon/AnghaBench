
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct smc_ib_device {TYPE_1__* pattr; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ IB_PORT_ACTIVE ;

bool smc_ib_port_active(struct smc_ib_device *smcibdev, u8 ibport)
{
 return smcibdev->pattr[ibport - 1].state == IB_PORT_ACTIVE;
}
