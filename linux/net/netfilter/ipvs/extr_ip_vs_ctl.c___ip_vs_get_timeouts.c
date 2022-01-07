
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_ipvs {int dummy; } ;
struct ip_vs_timeout_user {void* udp_timeout; void* tcp_fin_timeout; void* tcp_timeout; } ;
struct ip_vs_proto_data {void** timeout_table; } ;


 void* HZ ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 size_t IP_VS_TCP_S_ESTABLISHED ;
 size_t IP_VS_TCP_S_FIN_WAIT ;
 size_t IP_VS_UDP_S_NORMAL ;
 struct ip_vs_proto_data* ip_vs_proto_data_get (struct netns_ipvs*,int ) ;
 int memset (struct ip_vs_timeout_user*,int ,int) ;

__attribute__((used)) static inline void
__ip_vs_get_timeouts(struct netns_ipvs *ipvs, struct ip_vs_timeout_user *u)
{




 memset(u, 0, sizeof (*u));
}
