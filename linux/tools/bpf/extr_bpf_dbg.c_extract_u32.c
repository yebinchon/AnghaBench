
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int r ;


 int memcpy (size_t*,int *,int) ;
 size_t ntohl (size_t) ;

__attribute__((used)) static uint32_t extract_u32(uint8_t *pkt, uint32_t off)
{
 uint32_t r;

 memcpy(&r, &pkt[off], sizeof(r));

 return ntohl(r);
}
