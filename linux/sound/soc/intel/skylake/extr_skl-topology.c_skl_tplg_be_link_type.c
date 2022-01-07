
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int NHLT_LINK_DMIC ;
 int NHLT_LINK_HDA ;
 int NHLT_LINK_INVALID ;
 int NHLT_LINK_SSP ;





__attribute__((used)) static u8 skl_tplg_be_link_type(int dev_type)
{
 int ret;

 switch (dev_type) {
 case 131:
  ret = NHLT_LINK_SSP;
  break;

 case 130:
  ret = NHLT_LINK_DMIC;
  break;

 case 128:
  ret = NHLT_LINK_SSP;
  break;

 case 129:
  ret = NHLT_LINK_HDA;
  break;

 default:
  ret = NHLT_LINK_INVALID;
  break;
 }

 return ret;
}
