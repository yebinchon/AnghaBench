
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct oxygen {int dummy; } ;


 int oxygen_write16_masked (struct oxygen*,unsigned int,int ,int ) ;

__attribute__((used)) static inline void oxygen_set_bits16(struct oxygen *chip,
         unsigned int reg, u16 value)
{
 oxygen_write16_masked(chip, reg, value, value);
}
