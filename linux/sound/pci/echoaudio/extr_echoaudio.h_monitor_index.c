
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int dummy; } ;


 int num_busses_in (struct echoaudio const*) ;

__attribute__((used)) static inline int monitor_index(const struct echoaudio *chip, int out, int in)
{
 return out * num_busses_in(chip) + in;
}
