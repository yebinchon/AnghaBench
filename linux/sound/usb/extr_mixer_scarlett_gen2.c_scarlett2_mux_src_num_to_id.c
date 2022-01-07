
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scarlett2_ports {int* num; int id; } ;


 size_t SCARLETT2_PORT_IN ;
 int SCARLETT2_PORT_TYPE_COUNT ;

__attribute__((used)) static u32 scarlett2_mux_src_num_to_id(const struct scarlett2_ports *ports,
           int num)
{
 int port_type;

 for (port_type = 0;
      port_type < SCARLETT2_PORT_TYPE_COUNT;
      port_type++) {
  if (num < ports[port_type].num[SCARLETT2_PORT_IN])
   return ports[port_type].id | num;
  num -= ports[port_type].num[SCARLETT2_PORT_IN];
 }


 return 0;
}
