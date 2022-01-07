
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int type; } ;
struct sw_flow_key {TYPE_1__ eth; } ;




 int NFPROTO_IPV4 ;
 int NFPROTO_IPV6 ;
 int NFPROTO_UNSPEC ;
 int ntohs (int ) ;

__attribute__((used)) static u16 key_to_nfproto(const struct sw_flow_key *key)
{
 switch (ntohs(key->eth.type)) {
 case 129:
  return NFPROTO_IPV4;
 case 128:
  return NFPROTO_IPV6;
 default:
  return NFPROTO_UNSPEC;
 }
}
