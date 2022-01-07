
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int put_unaligned_le64 (int ,int *) ;

__attribute__((used)) static void w8le(uint64_t val, uint64_t *x)
{
 put_unaligned_le64(val, x);
}
