
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_protocol {int dummy; } ;





 struct inet6_protocol const ah6_protocol ;
 struct inet6_protocol const esp6_protocol ;
 struct inet6_protocol const ipcomp6_protocol ;

__attribute__((used)) static inline const struct inet6_protocol *netproto(unsigned char protocol)
{
 switch (protocol) {
 case 128:
  return &esp6_protocol;
 case 130:
  return &ah6_protocol;
 case 129:
  return &ipcomp6_protocol;
 }

 return ((void*)0);
}
