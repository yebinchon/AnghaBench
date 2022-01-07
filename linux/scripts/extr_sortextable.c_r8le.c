
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int get_unaligned_le64 (int const*) ;

__attribute__((used)) static uint64_t r8le(const uint64_t *x)
{
 return get_unaligned_le64(x);
}
