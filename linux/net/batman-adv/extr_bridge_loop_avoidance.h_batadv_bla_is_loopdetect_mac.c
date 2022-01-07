
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline bool batadv_bla_is_loopdetect_mac(const uint8_t *mac)
{
 if (mac[0] == 0xba && mac[1] == 0xbe)
  return 1;

 return 0;
}
