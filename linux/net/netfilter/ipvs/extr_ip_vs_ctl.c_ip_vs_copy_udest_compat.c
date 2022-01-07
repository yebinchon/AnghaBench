
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ip; } ;
struct ip_vs_dest_user_kern {int tun_type; int af; int l_threshold; int u_threshold; int weight; int conn_flags; int port; TYPE_1__ addr; } ;
struct ip_vs_dest_user {int l_threshold; int u_threshold; int weight; int conn_flags; int port; int addr; } ;


 int AF_INET ;
 int IP_VS_CONN_F_TUNNEL_TYPE_IPIP ;
 int memset (struct ip_vs_dest_user_kern*,int ,int) ;

__attribute__((used)) static void ip_vs_copy_udest_compat(struct ip_vs_dest_user_kern *udest,
       struct ip_vs_dest_user *udest_compat)
{
 memset(udest, 0, sizeof(*udest));

 udest->addr.ip = udest_compat->addr;
 udest->port = udest_compat->port;
 udest->conn_flags = udest_compat->conn_flags;
 udest->weight = udest_compat->weight;
 udest->u_threshold = udest_compat->u_threshold;
 udest->l_threshold = udest_compat->l_threshold;
 udest->af = AF_INET;
 udest->tun_type = IP_VS_CONN_F_TUNNEL_TYPE_IPIP;
}
