
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int GPIO_CLARO_DIG_COAX ;
 int OXYGEN_GPIO_CONTROL ;
 int OXYGEN_GPIO_DATA ;
 int ak4396_init (struct oxygen*) ;
 int ak5385_init (struct oxygen*) ;
 int claro_enable_hp (struct oxygen*) ;
 int oxygen_clear_bits16 (struct oxygen*,int ,int ) ;
 int oxygen_set_bits16 (struct oxygen*,int ,int ) ;

__attribute__((used)) static void claro_halo_init(struct oxygen *chip)
{
 oxygen_set_bits16(chip, OXYGEN_GPIO_CONTROL, GPIO_CLARO_DIG_COAX);
 oxygen_clear_bits16(chip, OXYGEN_GPIO_DATA, GPIO_CLARO_DIG_COAX);
 ak4396_init(chip);
 ak5385_init(chip);
 claro_enable_hp(chip);
}
