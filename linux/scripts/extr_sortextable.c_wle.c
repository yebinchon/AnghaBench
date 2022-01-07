
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int put_unaligned_le32 (int ,int *) ;

__attribute__((used)) static void wle(uint32_t val, uint32_t *x)
{
 put_unaligned_le32(val, x);
}
