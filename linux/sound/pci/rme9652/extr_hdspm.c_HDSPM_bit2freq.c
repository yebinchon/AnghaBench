
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int HDSPM_bit2freq(int n)
{
 static const int bit2freq_tab[] = {
  0, 32000, 44100, 48000, 64000, 88200,
  96000, 128000, 176400, 192000 };
 if (n < 1 || n > 9)
  return 0;
 return bit2freq_tab[n];
}
