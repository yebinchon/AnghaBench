
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsr_priv {int dummy; } ;
struct hsr_port {int dummy; } ;
struct hsr_node {scalar_t__* time_in; scalar_t__* time_in_stale; } ;


 size_t HSR_PT_SLAVE_A ;
 size_t HSR_PT_SLAVE_B ;
 int MAX_SLAVE_DIFF ;
 struct hsr_port* hsr_port_get_hsr (struct hsr_priv*,size_t) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct hsr_port *get_late_port(struct hsr_priv *hsr,
          struct hsr_node *node)
{
 if (node->time_in_stale[HSR_PT_SLAVE_A])
  return hsr_port_get_hsr(hsr, HSR_PT_SLAVE_A);
 if (node->time_in_stale[HSR_PT_SLAVE_B])
  return hsr_port_get_hsr(hsr, HSR_PT_SLAVE_B);

 if (time_after(node->time_in[HSR_PT_SLAVE_B],
         node->time_in[HSR_PT_SLAVE_A] +
     msecs_to_jiffies(MAX_SLAVE_DIFF)))
  return hsr_port_get_hsr(hsr, HSR_PT_SLAVE_A);
 if (time_after(node->time_in[HSR_PT_SLAVE_A],
         node->time_in[HSR_PT_SLAVE_B] +
     msecs_to_jiffies(MAX_SLAVE_DIFF)))
  return hsr_port_get_hsr(hsr, HSR_PT_SLAVE_B);

 return ((void*)0);
}
