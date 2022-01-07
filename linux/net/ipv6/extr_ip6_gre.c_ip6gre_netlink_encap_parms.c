
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct ip_tunnel_encap {void* dport; void* sport; void* flags; void* type; } ;


 size_t IFLA_GRE_ENCAP_DPORT ;
 size_t IFLA_GRE_ENCAP_FLAGS ;
 size_t IFLA_GRE_ENCAP_SPORT ;
 size_t IFLA_GRE_ENCAP_TYPE ;
 int memset (struct ip_tunnel_encap*,int ,int) ;
 void* nla_get_be16 (struct nlattr*) ;
 void* nla_get_u16 (struct nlattr*) ;

__attribute__((used)) static bool ip6gre_netlink_encap_parms(struct nlattr *data[],
           struct ip_tunnel_encap *ipencap)
{
 bool ret = 0;

 memset(ipencap, 0, sizeof(*ipencap));

 if (!data)
  return ret;

 if (data[IFLA_GRE_ENCAP_TYPE]) {
  ret = 1;
  ipencap->type = nla_get_u16(data[IFLA_GRE_ENCAP_TYPE]);
 }

 if (data[IFLA_GRE_ENCAP_FLAGS]) {
  ret = 1;
  ipencap->flags = nla_get_u16(data[IFLA_GRE_ENCAP_FLAGS]);
 }

 if (data[IFLA_GRE_ENCAP_SPORT]) {
  ret = 1;
  ipencap->sport = nla_get_be16(data[IFLA_GRE_ENCAP_SPORT]);
 }

 if (data[IFLA_GRE_ENCAP_DPORT]) {
  ret = 1;
  ipencap->dport = nla_get_be16(data[IFLA_GRE_ENCAP_DPORT]);
 }

 return ret;
}
