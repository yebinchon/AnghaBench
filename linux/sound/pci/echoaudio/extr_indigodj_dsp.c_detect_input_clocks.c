
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct echoaudio {int dummy; } ;


 int ECHO_CLOCK_BIT_INTERNAL ;

__attribute__((used)) static u32 detect_input_clocks(const struct echoaudio *chip)
{
 return ECHO_CLOCK_BIT_INTERNAL;
}
