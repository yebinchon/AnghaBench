
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rubin_state {int bit_divider; scalar_t__* bits; } ;


 int decode (struct rubin_state*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int in_byte(struct rubin_state *rs)
{
 int i, result = 0, bit_divider = rs->bit_divider;

 for (i = 0; i < 8; i++)
  result |= decode(rs, bit_divider - rs->bits[i],
     rs->bits[i]) << i;

 return result;
}
