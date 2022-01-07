
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {TYPE_1__* comm_page; } ;
struct TYPE_2__ {int status_clocks; } ;


 int ECHO_CLOCK_BIT_ADAT ;
 int ECHO_CLOCK_BIT_ESYNC ;
 int ECHO_CLOCK_BIT_ESYNC96 ;
 int ECHO_CLOCK_BIT_INTERNAL ;
 int ECHO_CLOCK_BIT_SPDIF ;
 int GML_CLOCK_DETECT_BIT_ADAT ;
 int GML_CLOCK_DETECT_BIT_ESYNC ;
 int GML_CLOCK_DETECT_BIT_SPDIF ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static u32 detect_input_clocks(const struct echoaudio *chip)
{
 u32 clocks_from_dsp, clock_bits;



 clocks_from_dsp = le32_to_cpu(chip->comm_page->status_clocks);

 clock_bits = ECHO_CLOCK_BIT_INTERNAL;

 if (clocks_from_dsp & GML_CLOCK_DETECT_BIT_SPDIF)
  clock_bits |= ECHO_CLOCK_BIT_SPDIF;

 if (clocks_from_dsp & GML_CLOCK_DETECT_BIT_ADAT)
  clock_bits |= ECHO_CLOCK_BIT_ADAT;

 if (clocks_from_dsp & GML_CLOCK_DETECT_BIT_ESYNC)
  clock_bits |= ECHO_CLOCK_BIT_ESYNC | ECHO_CLOCK_BIT_ESYNC96;

 return clock_bits;
}
