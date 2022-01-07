
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct oxygen {int dummy; } ;


 int oxygen_write_ac97_masked (struct oxygen*,unsigned int,unsigned int,int ,int ) ;

__attribute__((used)) static inline void oxygen_ac97_set_bits(struct oxygen *chip, unsigned int codec,
     unsigned int index, u16 value)
{
 oxygen_write_ac97_masked(chip, codec, index, value, value);
}
