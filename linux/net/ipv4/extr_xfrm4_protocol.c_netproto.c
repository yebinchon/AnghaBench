
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_protocol {int dummy; } ;





 struct net_protocol const ah4_protocol ;
 struct net_protocol const esp4_protocol ;
 struct net_protocol const ipcomp4_protocol ;

__attribute__((used)) static inline const struct net_protocol *netproto(unsigned char protocol)
{
 switch (protocol) {
 case 128:
  return &esp4_protocol;
 case 130:
  return &ah4_protocol;
 case 129:
  return &ipcomp4_protocol;
 }

 return ((void*)0);
}
