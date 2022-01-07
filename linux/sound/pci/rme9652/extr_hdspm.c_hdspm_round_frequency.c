
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int hdspm_round_frequency(int rate)
{
 if (rate < 38050)
  return 32000;
 if (rate < 46008)
  return 44100;
 else
  return 48000;
}
