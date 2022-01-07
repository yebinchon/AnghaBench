
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int WLAN_EID_VENDOR_SPECIFIC ;

u8 *ieee80211_add_wmm_info_ie(u8 *buf, u8 qosinfo)
{
 *buf++ = WLAN_EID_VENDOR_SPECIFIC;
 *buf++ = 7;
 *buf++ = 0x00;
 *buf++ = 0x50;
 *buf++ = 0xf2;
 *buf++ = 2;
 *buf++ = 0;
 *buf++ = 1;
 *buf++ = qosinfo;

 return buf;
}
