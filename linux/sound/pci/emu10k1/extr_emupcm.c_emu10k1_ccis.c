
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int emu10k1_ccis(int stereo, int w_16)
{
 if (w_16) {
  return stereo ? 24 : 26;
 } else {
  return stereo ? 24*2 : 26*2;
 }
}
