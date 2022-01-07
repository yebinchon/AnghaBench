
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;



__attribute__((used)) static uint32_t w2rev(uint16_t const x)
{
 return ((0xff & (x >> (0 * 8))) << (1 * 8))
        | ((0xff & (x >> (1 * 8))) << (0 * 8));
}
