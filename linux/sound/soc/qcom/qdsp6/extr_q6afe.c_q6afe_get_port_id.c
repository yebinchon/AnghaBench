
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port_id; } ;


 int AFE_PORT_MAX ;
 int EINVAL ;
 TYPE_1__* port_maps ;

int q6afe_get_port_id(int index)
{
 if (index < 0 || index >= AFE_PORT_MAX)
  return -EINVAL;

 return port_maps[index].port_id;
}
