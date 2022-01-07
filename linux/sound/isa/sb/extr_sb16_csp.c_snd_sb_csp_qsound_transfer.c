
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb_csp {int running; int qpos_left; int qpos_right; int q_lock; scalar_t__ qpos_changed; int chip; } ;


 int ENXIO ;
 int SNDRV_SB_CSP_ST_QSOUND ;
 int set_codec_parameter (int ,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_sb_csp_qsound_transfer(struct snd_sb_csp * p)
{
 int err = -ENXIO;

 spin_lock(&p->q_lock);
 if (p->running & SNDRV_SB_CSP_ST_QSOUND) {
  set_codec_parameter(p->chip, 0xe0, 0x01);

  set_codec_parameter(p->chip, 0x00, p->qpos_left);
  set_codec_parameter(p->chip, 0x02, 0x00);

  set_codec_parameter(p->chip, 0x00, p->qpos_right);
  set_codec_parameter(p->chip, 0x03, 0x00);
  err = 0;
 }
 p->qpos_changed = 0;
 spin_unlock(&p->q_lock);
 return err;
}
