
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int dummy; } ;


 int init_line_levels (struct echoaudio*) ;

__attribute__((used)) static int set_mixer_defaults(struct echoaudio *chip)
{
 return init_line_levels(chip);
}
