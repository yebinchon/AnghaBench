
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int number_of_packets; scalar_t__ transfer_buffer; TYPE_1__* iso_frame_desc; } ;
struct snd_usb_substream {int dummy; } ;
typedef int packet_length ;
typedef int __le32 ;
struct TYPE_2__ {unsigned int length; unsigned int offset; } ;


 int copy_to_urb (struct snd_usb_substream*,struct urb*,unsigned int,int,unsigned int) ;
 int cpu_to_le32 (unsigned int) ;
 int memcpy (scalar_t__,int *,int) ;

__attribute__((used)) static unsigned int copy_to_urb_quirk(struct snd_usb_substream *subs,
          struct urb *urb, int stride,
          unsigned int bytes)
{
 __le32 packet_length;
 int i;


 for (i = 0; i < urb->number_of_packets; i++) {
  unsigned int length = urb->iso_frame_desc[i].length;
  unsigned int offset = urb->iso_frame_desc[i].offset;

  packet_length = cpu_to_le32(length);
  offset += i * sizeof(packet_length);
  urb->iso_frame_desc[i].offset = offset;
  urb->iso_frame_desc[i].length += sizeof(packet_length);
  memcpy(urb->transfer_buffer + offset,
         &packet_length, sizeof(packet_length));
  copy_to_urb(subs, urb, offset + sizeof(packet_length),
       stride, length);
 }

 bytes += urb->number_of_packets * sizeof(packet_length);
 return bytes;
}
