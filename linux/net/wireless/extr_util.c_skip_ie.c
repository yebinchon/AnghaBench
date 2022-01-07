
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int const WLAN_EID_FRAGMENT ;

__attribute__((used)) static size_t skip_ie(const u8 *ies, size_t ielen, size_t pos)
{

 u8 len = ies[pos + 1];

 pos += 2 + len;


 if (len < 255)
  return pos;

 while (pos < ielen && ies[pos] == WLAN_EID_FRAGMENT) {
  len = ies[pos + 1];
  pos += 2 + len;
 }

 return pos;
}
