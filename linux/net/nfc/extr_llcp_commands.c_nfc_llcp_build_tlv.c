
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 int GFP_KERNEL ;
 size_t LLCP_TLV_MAX ;
 size_t* kzalloc (int,int ) ;
 size_t* llcp_tlv_length ;
 int memcpy (size_t*,size_t*,size_t) ;
 int pr_debug (char*,size_t) ;

u8 *nfc_llcp_build_tlv(u8 type, u8 *value, u8 value_length, u8 *tlv_length)
{
 u8 *tlv, length;

 pr_debug("type %d\n", type);

 if (type >= LLCP_TLV_MAX)
  return ((void*)0);

 length = llcp_tlv_length[type];
 if (length == 0 && value_length == 0)
  return ((void*)0);
 else if (length == 0)
  length = value_length;

 *tlv_length = 2 + length;
 tlv = kzalloc(2 + length, GFP_KERNEL);
 if (tlv == ((void*)0))
  return tlv;

 tlv[0] = type;
 tlv[1] = length;
 memcpy(tlv + 2, value, length);

 return tlv;
}
