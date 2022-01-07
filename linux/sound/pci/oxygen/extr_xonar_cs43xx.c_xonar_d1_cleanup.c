
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int CS4362A_CPEN ;
 int CS4362A_PDN ;
 int OXYGEN_FUNCTION ;
 int OXYGEN_FUNCTION_RESET_CODEC ;
 int cs4362a_write (struct oxygen*,int,int) ;
 int oxygen_clear_bits8 (struct oxygen*,int ,int ) ;
 int xonar_disable_output (struct oxygen*) ;

__attribute__((used)) static void xonar_d1_cleanup(struct oxygen *chip)
{
 xonar_disable_output(chip);
 cs4362a_write(chip, 0x01, CS4362A_PDN | CS4362A_CPEN);
 oxygen_clear_bits8(chip, OXYGEN_FUNCTION, OXYGEN_FUNCTION_RESET_CODEC);
}
