
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_emu10k1 {int dummy; } ;


 int snd_emu1010_fpga_write (struct snd_emu10k1*,int,int) ;

int snd_emu1010_fpga_link_dst_src_write(struct snd_emu10k1 * emu, u32 dst, u32 src)
{
 snd_emu1010_fpga_write(emu, 0x00, ((dst >> 8) & 0x3f) );
 snd_emu1010_fpga_write(emu, 0x01, (dst & 0x3f) );
 snd_emu1010_fpga_write(emu, 0x02, ((src >> 8) & 0x3f) );
 snd_emu1010_fpga_write(emu, 0x03, (src & 0x3f) );

 return 0;
}
