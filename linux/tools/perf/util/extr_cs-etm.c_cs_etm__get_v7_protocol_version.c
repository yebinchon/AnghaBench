
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CS_ETM_PROTO_ETMV3 ;
 int CS_ETM_PROTO_PTM ;
 int ETMIDR_PTM_VERSION ;

__attribute__((used)) static u32 cs_etm__get_v7_protocol_version(u32 etmidr)
{
 etmidr &= ETMIDR_PTM_VERSION;

 if (etmidr == ETMIDR_PTM_VERSION)
  return CS_ETM_PROTO_PTM;

 return CS_ETM_PROTO_ETMV3;
}
