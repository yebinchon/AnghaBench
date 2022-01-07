
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hsr_port {size_t type; } ;
struct hsr_node {int * seq_out; } ;


 scalar_t__ seq_nr_before_or_eq (int ,int ) ;

int hsr_register_frame_out(struct hsr_port *port, struct hsr_node *node,
      u16 sequence_nr)
{
 if (seq_nr_before_or_eq(sequence_nr, node->seq_out[port->type]))
  return 1;

 node->seq_out[port->type] = sequence_nr;
 return 0;
}
