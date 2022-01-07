
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scarlett2_ports {scalar_t__* num; } ;


 size_t SCARLETT2_PORT_IN ;
 int SCARLETT2_PORT_TYPE_COUNT ;

__attribute__((used)) static int scarlett2_count_mux_srcs(const struct scarlett2_ports *ports)
{
 int port_type, count = 0;

 for (port_type = 0;
      port_type < SCARLETT2_PORT_TYPE_COUNT;
      port_type++)
  count += ports[port_type].num[SCARLETT2_PORT_IN];

 return count;
}
