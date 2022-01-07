
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_protocol {char const* (* state_name ) (unsigned int) ;} ;
struct ip_vs_conn {unsigned int state; int flags; scalar_t__ protocol; } ;


 scalar_t__ IPPROTO_IP ;
 int IP_VS_CONN_F_TEMPLATE ;
 unsigned int IP_VS_CTPL_S_LAST ;
 scalar_t__* ip_vs_ctpl_state_name_table ;
 struct ip_vs_protocol* ip_vs_proto_get (scalar_t__) ;
 char const* stub1 (unsigned int) ;

const char *ip_vs_state_name(const struct ip_vs_conn *cp)
{
 unsigned int state = cp->state;
 struct ip_vs_protocol *pp;

 if (cp->flags & IP_VS_CONN_F_TEMPLATE) {

  if (state >= IP_VS_CTPL_S_LAST)
   return "ERR!";
  return ip_vs_ctpl_state_name_table[state] ? : "?";
 }
 pp = ip_vs_proto_get(cp->protocol);
 if (pp == ((void*)0) || pp->state_name == ((void*)0))
  return (cp->protocol == IPPROTO_IP) ? "NONE" : "ERR!";
 return pp->state_name(state);
}
