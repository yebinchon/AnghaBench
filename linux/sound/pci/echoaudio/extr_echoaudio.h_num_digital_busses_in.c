
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int dummy; } ;


 int num_analog_busses_in (struct echoaudio const*) ;
 int num_busses_in (struct echoaudio const*) ;

__attribute__((used)) static inline int num_digital_busses_in(const struct echoaudio *chip)
{
 return num_busses_in(chip) - num_analog_busses_in(chip);
}
