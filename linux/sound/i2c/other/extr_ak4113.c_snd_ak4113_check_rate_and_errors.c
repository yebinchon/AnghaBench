
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_pcm_runtime {int rate; int sleep; } ;
struct ak4113 {unsigned char rcs0; int rcs1; unsigned char rcs2; TYPE_2__* substream; int (* change_callback ) (struct ak4113*,unsigned char,unsigned char) ;TYPE_1__** kctls; int card; int lock; int * errors; } ;
struct TYPE_7__ {struct snd_pcm_runtime* runtime; } ;
struct TYPE_6__ {int id; } ;


 unsigned char AK4113_AUDION ;
 unsigned char AK4113_AUTO ;
 unsigned char AK4113_CCRC ;
 size_t AK4113_CCRC_ERRORS ;
 unsigned int AK4113_CHECK_NO_RATE ;
 unsigned int AK4113_CHECK_NO_STAT ;
 unsigned char AK4113_CINT ;
 int AK4113_DAT ;
 int AK4113_DTSCD ;
 int AK4113_NPCM ;
 unsigned char AK4113_PAR ;
 size_t AK4113_PARITY_ERRORS ;
 int AK4113_PEM ;
 unsigned char AK4113_QCRC ;
 size_t AK4113_QCRC_ERRORS ;
 unsigned char AK4113_QINT ;
 int AK4113_REG_RCS0 ;
 int AK4113_REG_RCS1 ;
 int AK4113_REG_RCS2 ;
 unsigned char AK4113_STC ;
 unsigned char AK4113_UNLCK ;
 unsigned char AK4113_V ;
 size_t AK4113_V_BIT_ERRORS ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int SNDRV_PCM_STATE_DRAINING ;
 int external_rate (unsigned char) ;
 unsigned char reg_read (struct ak4113*,int ) ;
 int snd_ctl_notify (int ,int ,int *) ;
 scalar_t__ snd_pcm_running (TYPE_2__*) ;
 int snd_pcm_stop (TYPE_2__*,int ) ;
 int snd_pcm_stream_lock_irqsave (TYPE_2__*,unsigned long) ;
 int snd_pcm_stream_unlock_irqrestore (TYPE_2__*,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ak4113*,unsigned char,unsigned char) ;
 int wake_up (int *) ;

int snd_ak4113_check_rate_and_errors(struct ak4113 *ak4113, unsigned int flags)
{
 struct snd_pcm_runtime *runtime =
  ak4113->substream ? ak4113->substream->runtime : ((void*)0);
 unsigned long _flags;
 int res = 0;
 unsigned char rcs0, rcs1, rcs2;
 unsigned char c0, c1;

 rcs1 = reg_read(ak4113, AK4113_REG_RCS1);
 if (flags & AK4113_CHECK_NO_STAT)
  goto __rate;
 rcs0 = reg_read(ak4113, AK4113_REG_RCS0);
 rcs2 = reg_read(ak4113, AK4113_REG_RCS2);
 spin_lock_irqsave(&ak4113->lock, _flags);
 if (rcs0 & AK4113_PAR)
  ak4113->errors[AK4113_PARITY_ERRORS]++;
 if (rcs0 & AK4113_V)
  ak4113->errors[AK4113_V_BIT_ERRORS]++;
 if (rcs2 & AK4113_CCRC)
  ak4113->errors[AK4113_CCRC_ERRORS]++;
 if (rcs2 & AK4113_QCRC)
  ak4113->errors[AK4113_QCRC_ERRORS]++;
 c0 = (ak4113->rcs0 & (AK4113_QINT | AK4113_CINT | AK4113_STC |
    AK4113_AUDION | AK4113_AUTO | AK4113_UNLCK)) ^
  (rcs0 & (AK4113_QINT | AK4113_CINT | AK4113_STC |
    AK4113_AUDION | AK4113_AUTO | AK4113_UNLCK));
 c1 = (ak4113->rcs1 & (AK4113_DTSCD | AK4113_NPCM | AK4113_PEM |
    AK4113_DAT | 0xf0)) ^
  (rcs1 & (AK4113_DTSCD | AK4113_NPCM | AK4113_PEM |
    AK4113_DAT | 0xf0));
 ak4113->rcs0 = rcs0 & ~(AK4113_QINT | AK4113_CINT | AK4113_STC);
 ak4113->rcs1 = rcs1;
 ak4113->rcs2 = rcs2;
 spin_unlock_irqrestore(&ak4113->lock, _flags);

 if (rcs0 & AK4113_PAR)
  snd_ctl_notify(ak4113->card, SNDRV_CTL_EVENT_MASK_VALUE,
    &ak4113->kctls[0]->id);
 if (rcs0 & AK4113_V)
  snd_ctl_notify(ak4113->card, SNDRV_CTL_EVENT_MASK_VALUE,
    &ak4113->kctls[1]->id);
 if (rcs2 & AK4113_CCRC)
  snd_ctl_notify(ak4113->card, SNDRV_CTL_EVENT_MASK_VALUE,
    &ak4113->kctls[2]->id);
 if (rcs2 & AK4113_QCRC)
  snd_ctl_notify(ak4113->card, SNDRV_CTL_EVENT_MASK_VALUE,
    &ak4113->kctls[3]->id);


 if (c1 & 0xf0)
  snd_ctl_notify(ak4113->card, SNDRV_CTL_EVENT_MASK_VALUE,
    &ak4113->kctls[4]->id);

 if ((c1 & AK4113_PEM) | (c0 & AK4113_CINT))
  snd_ctl_notify(ak4113->card, SNDRV_CTL_EVENT_MASK_VALUE,
    &ak4113->kctls[6]->id);
 if (c0 & AK4113_QINT)
  snd_ctl_notify(ak4113->card, SNDRV_CTL_EVENT_MASK_VALUE,
    &ak4113->kctls[8]->id);

 if (c0 & AK4113_AUDION)
  snd_ctl_notify(ak4113->card, SNDRV_CTL_EVENT_MASK_VALUE,
    &ak4113->kctls[9]->id);
 if (c1 & AK4113_NPCM)
  snd_ctl_notify(ak4113->card, SNDRV_CTL_EVENT_MASK_VALUE,
    &ak4113->kctls[10]->id);
 if (c1 & AK4113_DTSCD)
  snd_ctl_notify(ak4113->card, SNDRV_CTL_EVENT_MASK_VALUE,
    &ak4113->kctls[11]->id);

 if (ak4113->change_callback && (c0 | c1) != 0)
  ak4113->change_callback(ak4113, c0, c1);

__rate:

 res = external_rate(rcs1);
 if (!(flags & AK4113_CHECK_NO_RATE) && runtime &&
   (runtime->rate != res)) {
  snd_pcm_stream_lock_irqsave(ak4113->substream, _flags);
  if (snd_pcm_running(ak4113->substream)) {


   snd_pcm_stop(ak4113->substream,
     SNDRV_PCM_STATE_DRAINING);
   wake_up(&runtime->sleep);
   res = 1;
  }
  snd_pcm_stream_unlock_irqrestore(ak4113->substream, _flags);
 }
 return res;
}
