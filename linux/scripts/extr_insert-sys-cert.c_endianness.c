
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;


 unsigned char ELFDATA2LSB ;
 unsigned char ELFDATA2MSB ;

__attribute__((used)) static unsigned char endianness(void)
{
 uint16_t two_byte = 0x00FF;
 uint8_t low_address = *((uint8_t *)&two_byte);

 if (low_address == 0)
  return ELFDATA2MSB;
 else
  return ELFDATA2LSB;
}
