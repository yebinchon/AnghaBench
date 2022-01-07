
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int uint16_t ;
typedef int r ;


 int memcpy (int *,int *,int) ;
 int ntohs (int ) ;

__attribute__((used)) static uint16_t extract_u16(uint8_t *pkt, uint32_t off)
{
 uint16_t r;

 memcpy(&r, &pkt[off], sizeof(r));

 return ntohs(r);
}
