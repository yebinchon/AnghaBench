
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ETH_ALEN ;
 int hex_to_bin (char const) ;
 int isxdigit (char const) ;
 int strlen (char const*) ;

bool mac_pton(const char *s, u8 *mac)
{
 int i;


 if (strlen(s) < 3 * ETH_ALEN - 1)
  return 0;


 for (i = 0; i < ETH_ALEN; i++) {
  if (!isxdigit(s[i * 3]) || !isxdigit(s[i * 3 + 1]))
   return 0;
  if (i != ETH_ALEN - 1 && s[i * 3 + 2] != ':')
   return 0;
 }
 for (i = 0; i < ETH_ALEN; i++) {
  mac[i] = (hex_to_bin(s[i * 3]) << 4) | hex_to_bin(s[i * 3 + 1]);
 }
 return 1;
}
