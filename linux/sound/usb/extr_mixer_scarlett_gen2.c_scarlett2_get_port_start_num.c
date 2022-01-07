
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scarlett2_ports {scalar_t__* num; } ;



__attribute__((used)) static int scarlett2_get_port_start_num(const struct scarlett2_ports *ports,
     int direction, int port_type)
{
 int i, num = 0;

 for (i = 0; i < port_type; i++)
  num += ports[i].num[direction];

 return num;
}
