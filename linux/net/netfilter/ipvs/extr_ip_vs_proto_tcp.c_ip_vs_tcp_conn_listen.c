
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_proto_data {int * timeout_table; } ;
struct ip_vs_conn {size_t state; int lock; int timeout; int ipvs; } ;


 int IPPROTO_TCP ;
 size_t IP_VS_TCP_S_LISTEN ;
 struct ip_vs_proto_data* ip_vs_proto_data_get (int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int * tcp_timeouts ;

void ip_vs_tcp_conn_listen(struct ip_vs_conn *cp)
{
 struct ip_vs_proto_data *pd = ip_vs_proto_data_get(cp->ipvs, IPPROTO_TCP);

 spin_lock_bh(&cp->lock);
 cp->state = IP_VS_TCP_S_LISTEN;
 cp->timeout = (pd ? pd->timeout_table[IP_VS_TCP_S_LISTEN]
      : tcp_timeouts[IP_VS_TCP_S_LISTEN]);
 spin_unlock_bh(&cp->lock);
}
