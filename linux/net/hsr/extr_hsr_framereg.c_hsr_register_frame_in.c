
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hsr_port {size_t type; } ;
struct hsr_node {int* time_in_stale; int * time_in; int * seq_out; } ;


 int jiffies ;
 scalar_t__ seq_nr_before (int ,int ) ;

void hsr_register_frame_in(struct hsr_node *node, struct hsr_port *port,
      u16 sequence_nr)
{




 if (seq_nr_before(sequence_nr, node->seq_out[port->type]))
  return;

 node->time_in[port->type] = jiffies;
 node->time_in_stale[port->type] = 0;
}
