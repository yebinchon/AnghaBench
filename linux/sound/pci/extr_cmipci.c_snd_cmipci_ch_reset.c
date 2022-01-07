
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmipci {int ctrl; TYPE_1__* channel; } ;
struct TYPE_2__ {int ch; } ;


 int CM_REG_FUNCTRL0 ;
 int CM_RST_CH0 ;
 int snd_cmipci_write (struct cmipci*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void snd_cmipci_ch_reset(struct cmipci *cm, int ch)
{
 int reset = CM_RST_CH0 << (cm->channel[ch].ch);
 snd_cmipci_write(cm, CM_REG_FUNCTRL0, cm->ctrl | reset);
 snd_cmipci_write(cm, CM_REG_FUNCTRL0, cm->ctrl & ~reset);
 udelay(10);
}
