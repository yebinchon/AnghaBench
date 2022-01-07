
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ndigi; } ;
typedef TYPE_1__ ax25_digi ;


 int AX25_ADDR_LEN ;

int ax25_addr_size(const ax25_digi *dp)
{
 if (dp == ((void*)0))
  return 2 * AX25_ADDR_LEN;

 return AX25_ADDR_LEN * (2 + dp->ndigi);
}
