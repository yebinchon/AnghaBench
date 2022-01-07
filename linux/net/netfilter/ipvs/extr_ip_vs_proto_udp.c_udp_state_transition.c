
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ip_vs_proto_data {int * timeout_table; } ;
struct ip_vs_conn {int timeout; } ;


 int IP_VS_DIR_OUTPUT ;
 size_t IP_VS_UDP_S_NORMAL ;
 int ip_vs_control_assure_ct (struct ip_vs_conn*) ;
 int pr_err (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
udp_state_transition(struct ip_vs_conn *cp, int direction,
       const struct sk_buff *skb,
       struct ip_vs_proto_data *pd)
{
 if (unlikely(!pd)) {
  pr_err("UDP no ns data\n");
  return;
 }

 cp->timeout = pd->timeout_table[IP_VS_UDP_S_NORMAL];
 if (direction == IP_VS_DIR_OUTPUT)
  ip_vs_control_assure_ct(cp);
}
