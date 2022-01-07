
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_buffer_length; scalar_t__ transfer_buffer; } ;
typedef int __le16 ;


 short clamp (int,int,int) ;
 int cpu_to_le16 (short) ;
 short le16_to_cpu (int ) ;

__attribute__((used)) static void add_monitor_signal(struct urb *urb_out, unsigned char *signal,
          int volume, int bytes_per_frame)
{
 if (volume == 0)
  return;

 if (bytes_per_frame == 4) {
  __le16 *pi, *po, *buf_end;

  pi = (__le16 *)signal;
  po = (__le16 *)urb_out->transfer_buffer;
  buf_end = po + urb_out->transfer_buffer_length / sizeof(*po);

  for (; po < buf_end; ++pi, ++po) {
   short pov = le16_to_cpu(*po);
   short piv = le16_to_cpu(*pi);
   int val = pov + ((piv * volume) >> 8);
   pov = clamp(val, -0x8000, 0x7fff);
   *po = cpu_to_le16(pov);
  }
 }





}
