
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int dummy; } ;


 int num_analog_busses_out (struct echoaudio const*) ;
 int num_busses_out (struct echoaudio const*) ;

__attribute__((used)) static inline int num_digital_busses_out(const struct echoaudio *chip)
{
 return num_busses_out(chip) - num_analog_busses_out(chip);
}
