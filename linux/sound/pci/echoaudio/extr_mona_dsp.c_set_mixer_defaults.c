
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int professional_spdif; int digital_in_automute; int digital_mode; } ;


 int DIGITAL_MODE_SPDIF_RCA ;
 int init_line_levels (struct echoaudio*) ;

__attribute__((used)) static int set_mixer_defaults(struct echoaudio *chip)
{
 chip->digital_mode = DIGITAL_MODE_SPDIF_RCA;
 chip->professional_spdif = 0;
 chip->digital_in_automute = 1;
 return init_line_levels(chip);
}
