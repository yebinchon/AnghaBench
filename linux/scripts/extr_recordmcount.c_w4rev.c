
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t w4rev(uint32_t const x)
{
 return ((0xff & (x >> (0 * 8))) << (3 * 8))
        | ((0xff & (x >> (1 * 8))) << (2 * 8))
        | ((0xff & (x >> (2 * 8))) << (1 * 8))
        | ((0xff & (x >> (3 * 8))) << (0 * 8));
}
