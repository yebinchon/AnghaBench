
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIAS ;
 int val_seg (int) ;

__attribute__((used)) static unsigned char linear2ulaw(int pcm_val)
{
 int mask;
 int seg;
 unsigned char uval;


 if (pcm_val < 0) {
  pcm_val = BIAS - pcm_val;
  mask = 0x7F;
 } else {
  pcm_val += BIAS;
  mask = 0xFF;
 }
 if (pcm_val > 0x7FFF)
  pcm_val = 0x7FFF;


 seg = val_seg(pcm_val);





 uval = (seg << 4) | ((pcm_val >> (seg + 3)) & 0xF);
 return uval ^ mask;
}
