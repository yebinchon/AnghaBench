
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcf_meta_info {int metaid; scalar_t__ metaval; } ;


 scalar_t__ htonl (scalar_t__) ;
 int ife_tlv_meta_encode (void*,int ,int,scalar_t__*) ;

int ife_encode_meta_u32(u32 metaval, void *skbdata, struct tcf_meta_info *mi)
{
 u32 edata = metaval;

 if (mi->metaval)
  edata = *(u32 *)mi->metaval;
 else if (metaval)
  edata = metaval;

 if (!edata)
  return 0;

 edata = htonl(edata);
 return ife_tlv_meta_encode(skbdata, mi->metaid, 4, &edata);
}
