
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlv_desc {int dummy; } ;


 int TLV_GET_LEN (struct tlv_desc*) ;
 int TLV_SPACE (int ) ;

__attribute__((used)) static inline int TLV_GET_DATA_LEN(struct tlv_desc *tlv)
{
 return TLV_GET_LEN(tlv) - TLV_SPACE(0);
}
