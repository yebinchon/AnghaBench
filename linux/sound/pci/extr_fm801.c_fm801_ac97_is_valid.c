
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm801 {int dummy; } ;


 int AC97_CMD ;
 int FM801_AC97_VALID ;
 int fm801_readw (struct fm801*,int ) ;
 int udelay (int) ;

__attribute__((used)) static bool fm801_ac97_is_valid(struct fm801 *chip, unsigned int iterations)
{
 unsigned int idx;

 for (idx = 0; idx < iterations; idx++) {
  if (fm801_readw(chip, AC97_CMD) & FM801_AC97_VALID)
   return 1;
  udelay(10);
 }
 return 0;
}
