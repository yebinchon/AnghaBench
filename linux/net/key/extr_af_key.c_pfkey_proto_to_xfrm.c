
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ IPSEC_PROTO_ANY ;

__attribute__((used)) static uint8_t pfkey_proto_to_xfrm(uint8_t proto)
{
 return proto == IPSEC_PROTO_ANY ? 0 : proto;
}
