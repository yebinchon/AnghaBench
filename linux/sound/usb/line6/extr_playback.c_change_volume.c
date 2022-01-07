
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_buffer_length; scalar_t__ transfer_buffer; } ;
typedef int __le16 ;


 void* clamp (int,int,int) ;
 int cpu_to_le16 (short) ;
 short le16_to_cpu (int ) ;

__attribute__((used)) static void change_volume(struct urb *urb_out, int volume[],
     int bytes_per_frame)
{
 int chn = 0;

 if (volume[0] == 256 && volume[1] == 256)
  return;

 if (bytes_per_frame == 4) {
  __le16 *p, *buf_end;

  p = (__le16 *)urb_out->transfer_buffer;
  buf_end = p + urb_out->transfer_buffer_length / sizeof(*p);

  for (; p < buf_end; ++p) {
   short pv = le16_to_cpu(*p);
   int val = (pv * volume[chn & 1]) >> 8;
   pv = clamp(val, -0x8000, 0x7fff);
   *p = cpu_to_le16(pv);
   ++chn;
  }
 } else if (bytes_per_frame == 6) {
  unsigned char *p, *buf_end;

  p = (unsigned char *)urb_out->transfer_buffer;
  buf_end = p + urb_out->transfer_buffer_length;

  for (; p < buf_end; p += 3) {
   int val;

   val = p[0] + (p[1] << 8) + ((signed char)p[2] << 16);
   val = (val * volume[chn & 1]) >> 8;
   val = clamp(val, -0x800000, 0x7fffff);
   p[0] = val;
   p[1] = val >> 8;
   p[2] = val >> 16;
   ++chn;
  }
 }
}
