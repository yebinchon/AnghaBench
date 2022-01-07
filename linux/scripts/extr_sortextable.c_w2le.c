
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int put_unaligned_le16 (int ,int *) ;

__attribute__((used)) static void w2le(uint16_t val, uint16_t *x)
{
 put_unaligned_le16(val, x);
}
