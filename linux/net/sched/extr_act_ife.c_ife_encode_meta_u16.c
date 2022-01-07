
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct tcf_meta_info {int metaid; scalar_t__ metaval; } ;


 scalar_t__ htons (scalar_t__) ;
 int ife_tlv_meta_encode (void*,int ,int,scalar_t__*) ;

int ife_encode_meta_u16(u16 metaval, void *skbdata, struct tcf_meta_info *mi)
{
 u16 edata = 0;

 if (mi->metaval)
  edata = *(u16 *)mi->metaval;
 else if (metaval)
  edata = metaval;

 if (!edata)
  return 0;

 edata = htons(edata);
 return ife_tlv_meta_encode(skbdata, mi->metaid, 2, &edata);
}
