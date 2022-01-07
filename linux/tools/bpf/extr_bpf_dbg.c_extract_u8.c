
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;



__attribute__((used)) static uint8_t extract_u8(uint8_t *pkt, uint32_t off)
{
 return pkt[off];
}
