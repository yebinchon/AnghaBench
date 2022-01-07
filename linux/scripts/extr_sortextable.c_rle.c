
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int get_unaligned_le32 (int const*) ;

__attribute__((used)) static uint32_t rle(const uint32_t *x)
{
 return get_unaligned_le32(x);
}
