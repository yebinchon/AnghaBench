
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int sample_rate; int output_clock; int input_clock; int vmixer_gain; int monitor_gain; int input_gain; int output_gain; } ;


 int ECHOGAIN_MUTED ;
 int ECHO_CLOCK_INTERNAL ;
 int ECHO_CLOCK_WORD ;
 int memset (int ,int ,int) ;
 int restore_dsp_rettings (struct echoaudio*) ;

__attribute__((used)) static int init_line_levels(struct echoaudio *chip)
{
 memset(chip->output_gain, ECHOGAIN_MUTED, sizeof(chip->output_gain));
 memset(chip->input_gain, ECHOGAIN_MUTED, sizeof(chip->input_gain));
 memset(chip->monitor_gain, ECHOGAIN_MUTED, sizeof(chip->monitor_gain));
 memset(chip->vmixer_gain, ECHOGAIN_MUTED, sizeof(chip->vmixer_gain));
 chip->input_clock = ECHO_CLOCK_INTERNAL;
 chip->output_clock = ECHO_CLOCK_WORD;
 chip->sample_rate = 44100;
 return restore_dsp_rettings(chip);
}
