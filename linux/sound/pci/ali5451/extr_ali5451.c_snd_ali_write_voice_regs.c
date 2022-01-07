
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ali {int dummy; } ;


 int ALI_CSO_ALPHA_FMS ;
 int ALI_EBUF1 ;
 int ALI_EBUF2 ;
 int ALI_ESO_DELTA ;
 int ALI_GC_CIR ;
 int ALI_GVSEL_PAN_VOC_CTRL_EC ;
 int ALI_LBA ;
 int ALI_REG (struct snd_ali*,int ) ;
 int outb (unsigned int,int ) ;
 int outl (int,int ) ;

__attribute__((used)) static void snd_ali_write_voice_regs(struct snd_ali *codec,
    unsigned int Channel,
    unsigned int LBA,
    unsigned int CSO,
    unsigned int ESO,
    unsigned int DELTA,
    unsigned int ALPHA_FMS,
    unsigned int GVSEL,
    unsigned int PAN,
    unsigned int VOL,
    unsigned int CTRL,
    unsigned int EC)
{
 unsigned int ctlcmds[4];

 outb((unsigned char)(Channel & 0x001f), ALI_REG(codec, ALI_GC_CIR));

 ctlcmds[0] = (CSO << 16) | (ALPHA_FMS & 0x0000ffff);
 ctlcmds[1] = LBA;
 ctlcmds[2] = (ESO << 16) | (DELTA & 0x0ffff);
 ctlcmds[3] = (GVSEL << 31) |
        ((PAN & 0x0000007f) << 24) |
        ((VOL & 0x000000ff) << 16) |
        ((CTRL & 0x0000000f) << 12) |
        (EC & 0x00000fff);

 outb(Channel, ALI_REG(codec, ALI_GC_CIR));

 outl(ctlcmds[0], ALI_REG(codec, ALI_CSO_ALPHA_FMS));
 outl(ctlcmds[1], ALI_REG(codec, ALI_LBA));
 outl(ctlcmds[2], ALI_REG(codec, ALI_ESO_DELTA));
 outl(ctlcmds[3], ALI_REG(codec, ALI_GVSEL_PAN_VOC_CTRL_EC));

 outl(0x30000000, ALI_REG(codec, ALI_EBUF1));
 outl(0x30000000, ALI_REG(codec, ALI_EBUF2));
}
