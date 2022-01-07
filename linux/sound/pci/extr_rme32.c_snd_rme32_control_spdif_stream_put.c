
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int iec958; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct rme32 {int wcreg_spdif_stream; int wcreg; int lock; scalar_t__ iobase; } ;


 scalar_t__ RME32_IO_CONTROL_REGISTER ;
 int RME32_WCR_EMP ;
 int RME32_WCR_PRO ;
 struct rme32* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_rme32_convert_from_aes (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int snd_rme32_control_spdif_stream_put(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *
           ucontrol)
{
 struct rme32 *rme32 = snd_kcontrol_chip(kcontrol);
 int change;
 u32 val;

 val = snd_rme32_convert_from_aes(&ucontrol->value.iec958);
 spin_lock_irq(&rme32->lock);
 change = val != rme32->wcreg_spdif_stream;
 rme32->wcreg_spdif_stream = val;
 rme32->wcreg &= ~(RME32_WCR_PRO | RME32_WCR_EMP);
 rme32->wcreg |= val;
 writel(rme32->wcreg, rme32->iobase + RME32_IO_CONTROL_REGISTER);
 spin_unlock_irq(&rme32->lock);
 return change;
}
