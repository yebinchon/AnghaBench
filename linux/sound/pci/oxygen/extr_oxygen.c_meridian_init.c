
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int GPIO_MERIDIAN_DIG_BOARD ;
 int GPIO_MERIDIAN_DIG_MASK ;
 int OXYGEN_GPIO_CONTROL ;
 int OXYGEN_GPIO_DATA ;
 int ak4396_init (struct oxygen*) ;
 int ak5385_init (struct oxygen*) ;
 int oxygen_set_bits16 (struct oxygen*,int ,int ) ;
 int oxygen_write16_masked (struct oxygen*,int ,int ,int ) ;

__attribute__((used)) static void meridian_init(struct oxygen *chip)
{
 oxygen_set_bits16(chip, OXYGEN_GPIO_CONTROL,
     GPIO_MERIDIAN_DIG_MASK);
 oxygen_write16_masked(chip, OXYGEN_GPIO_DATA,
         GPIO_MERIDIAN_DIG_BOARD, GPIO_MERIDIAN_DIG_MASK);
 ak4396_init(chip);
 ak5385_init(chip);
}
