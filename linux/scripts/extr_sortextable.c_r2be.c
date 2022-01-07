
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int get_unaligned_be16 (int const*) ;

__attribute__((used)) static uint16_t r2be(const uint16_t *x)
{
 return get_unaligned_be16(x);
}
