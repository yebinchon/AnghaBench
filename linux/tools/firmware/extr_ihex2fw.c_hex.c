
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int nybble (int const) ;

__attribute__((used)) static uint8_t hex(const uint8_t *data, uint8_t *crc)
{
 uint8_t val = (nybble(data[0]) << 4) | nybble(data[1]);
 *crc += val;
 return val;
}
