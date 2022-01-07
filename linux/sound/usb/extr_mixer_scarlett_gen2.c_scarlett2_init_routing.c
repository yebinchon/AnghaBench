
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scarlett2_ports {int* num; } ;


 size_t SCARLETT2_PORT_IN ;
 size_t SCARLETT2_PORT_OUT ;


 size_t SCARLETT2_PORT_TYPE_PCM ;

 int scarlett2_get_port_start_num (struct scarlett2_ports const*,size_t,int) ;

__attribute__((used)) static void scarlett2_init_routing(u8 *mux,
       const struct scarlett2_ports *ports)
{
 int i, input_num, input_count, port_type;
 int output_num, output_count, port_type_connect_num;

 static const int connect_order[] = {
  129,
  128,
  130,
  -1
 };


 output_num = scarlett2_get_port_start_num(ports,
        SCARLETT2_PORT_OUT,
        SCARLETT2_PORT_TYPE_PCM);
 output_count = ports[SCARLETT2_PORT_TYPE_PCM].num[SCARLETT2_PORT_OUT];

 for (port_type = connect_order[port_type_connect_num = 0];
      port_type >= 0;
      port_type = connect_order[++port_type_connect_num]) {
  input_num = scarlett2_get_port_start_num(
   ports, SCARLETT2_PORT_IN, port_type);
  input_count = ports[port_type].num[SCARLETT2_PORT_IN];
  for (i = 0;
       i < input_count && output_count;
       i++, output_count--)
   mux[output_num++] = input_num++;
 }


 input_num = scarlett2_get_port_start_num(ports,
       SCARLETT2_PORT_IN,
       SCARLETT2_PORT_TYPE_PCM);
 input_count = ports[SCARLETT2_PORT_TYPE_PCM].num[SCARLETT2_PORT_IN];

 for (port_type = connect_order[port_type_connect_num = 0];
      port_type >= 0;
      port_type = connect_order[++port_type_connect_num]) {
  output_num = scarlett2_get_port_start_num(
   ports, SCARLETT2_PORT_OUT, port_type);
  output_count = ports[port_type].num[SCARLETT2_PORT_OUT];
  for (i = 0;
       i < output_count && input_count;
       i++, input_count--)
   mux[output_num++] = input_num++;
 }
}
