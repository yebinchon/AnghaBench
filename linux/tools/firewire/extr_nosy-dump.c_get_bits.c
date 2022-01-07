
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct link_packet {int dummy; } ;



__attribute__((used)) static unsigned int
get_bits(struct link_packet *packet, int offset, int width)
{
 uint32_t *data = (uint32_t *) packet;
 uint32_t index, shift, mask;

 index = offset / 32 + 1;
 shift = 32 - (offset & 31) - width;
 mask = width == 32 ? ~0 : (1 << width) - 1;

 return (data[index] >> shift) & mask;
}
