
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int dummy; } ;


 int bx_analog_in (struct echoaudio const*) ;

__attribute__((used)) static inline int num_busses_out(const struct echoaudio *chip)
{
 return bx_analog_in(chip);
}
