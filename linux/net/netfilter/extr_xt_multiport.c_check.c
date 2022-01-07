
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
typedef scalar_t__ u_int16_t ;


 scalar_t__ IPPROTO_DCCP ;
 scalar_t__ IPPROTO_SCTP ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ IPPROTO_UDPLITE ;
 scalar_t__ XT_INV_PROTO ;
 scalar_t__ XT_MULTIPORT_DESTINATION ;
 scalar_t__ XT_MULTIPORT_EITHER ;
 scalar_t__ XT_MULTIPORT_SOURCE ;
 scalar_t__ XT_MULTI_PORTS ;

__attribute__((used)) static inline bool
check(u_int16_t proto,
      u_int8_t ip_invflags,
      u_int8_t match_flags,
      u_int8_t count)
{

 return (proto == IPPROTO_TCP || proto == IPPROTO_UDP
  || proto == IPPROTO_UDPLITE
  || proto == IPPROTO_SCTP || proto == IPPROTO_DCCP)
  && !(ip_invflags & XT_INV_PROTO)
  && (match_flags == XT_MULTIPORT_SOURCE
      || match_flags == XT_MULTIPORT_DESTINATION
      || match_flags == XT_MULTIPORT_EITHER)
  && count <= XT_MULTI_PORTS;
}
