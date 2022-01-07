
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ac97 {unsigned int spdif_status; int flags; scalar_t__ id; int reg_mutex; } ;


 int AC97_CSR_SPDIF ;
 int AC97_CS_SPDIF ;
 int AC97_CXR_AUDIO_MISC ;
 unsigned short AC97_CXR_COPYRGT ;
 int AC97_CXR_SPDIF_AC3 ;
 unsigned short AC97_CXR_SPDIF_MASK ;
 int AC97_CXR_SPDIF_PCM ;
 int AC97_CX_SPDIF ;
 unsigned short AC97_EA_SPDIF ;
 int AC97_EXTENDED_STATUS ;
 scalar_t__ AC97_ID_YMF743 ;
 int AC97_SPDIF ;
 int AC97_YMF7X3_DIT_CTRL ;
 unsigned int IEC958_AES0_CON_EMPHASIS ;
 unsigned int IEC958_AES0_CON_EMPHASIS_5015 ;
 unsigned int IEC958_AES0_CON_NOT_COPYRIGHT ;
 int IEC958_AES0_NONAUDIO ;
 int IEC958_AES0_PROFESSIONAL ;
 unsigned int IEC958_AES0_PRO_EMPHASIS ;
 unsigned int IEC958_AES0_PRO_EMPHASIS_5015 ;
 unsigned int IEC958_AES0_PRO_FS ;



 int IEC958_AES1_CON_CATEGORY ;
 int IEC958_AES1_CON_ORIGINAL ;
 int IEC958_AES3_CON_FS ;



 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned short snd_ac97_read_cache (struct snd_ac97*,int ) ;
 int snd_ac97_update_bits_nolock (struct snd_ac97*,int ,unsigned short,unsigned short) ;
 struct snd_ac97* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ac97_spdif_default_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ac97 *ac97 = snd_kcontrol_chip(kcontrol);
 unsigned int new = 0;
 unsigned short val = 0;
 int change;

 new = val = ucontrol->value.iec958.status[0] & (IEC958_AES0_PROFESSIONAL|IEC958_AES0_NONAUDIO);
 if (ucontrol->value.iec958.status[0] & IEC958_AES0_PROFESSIONAL) {
  new |= ucontrol->value.iec958.status[0] & (IEC958_AES0_PRO_FS|IEC958_AES0_PRO_EMPHASIS_5015);
  switch (new & IEC958_AES0_PRO_FS) {
  case 132: val |= 0<<12; break;
  case 131: val |= 2<<12; break;
  case 133: val |= 3<<12; break;
  default: val |= 1<<12; break;
  }
  if ((new & IEC958_AES0_PRO_EMPHASIS) == IEC958_AES0_PRO_EMPHASIS_5015)
   val |= 1<<3;
 } else {
  new |= ucontrol->value.iec958.status[0] & (IEC958_AES0_CON_EMPHASIS_5015|IEC958_AES0_CON_NOT_COPYRIGHT);
  new |= ((ucontrol->value.iec958.status[1] & (IEC958_AES1_CON_CATEGORY|IEC958_AES1_CON_ORIGINAL)) << 8);
  new |= ((ucontrol->value.iec958.status[3] & IEC958_AES3_CON_FS) << 24);
  if ((new & IEC958_AES0_CON_EMPHASIS) == IEC958_AES0_CON_EMPHASIS_5015)
   val |= 1<<3;
  if (!(new & IEC958_AES0_CON_NOT_COPYRIGHT))
   val |= 1<<2;
  val |= ((new >> 8) & 0xff) << 4;
  switch ((new >> 24) & 0xff) {
  case 129: val |= 0<<12; break;
  case 128: val |= 2<<12; break;
  case 130: val |= 3<<12; break;
  default: val |= 1<<12; break;
  }
 }

 mutex_lock(&ac97->reg_mutex);
 change = ac97->spdif_status != new;
 ac97->spdif_status = new;

 if (ac97->flags & AC97_CS_SPDIF) {
  int x = (val >> 12) & 0x03;
  switch (x) {
  case 0: x = 1; break;
  case 2: x = 0; break;
  default: x = 0; break;
  }
  change |= snd_ac97_update_bits_nolock(ac97, AC97_CSR_SPDIF, 0x3fff, ((val & 0xcfff) | (x << 12)));
 } else if (ac97->flags & AC97_CX_SPDIF) {
  int v;
  v = new & (IEC958_AES0_CON_EMPHASIS_5015|IEC958_AES0_CON_NOT_COPYRIGHT) ? 0 : AC97_CXR_COPYRGT;
  v |= new & IEC958_AES0_NONAUDIO ? AC97_CXR_SPDIF_AC3 : AC97_CXR_SPDIF_PCM;
  change |= snd_ac97_update_bits_nolock(ac97, AC97_CXR_AUDIO_MISC,
            AC97_CXR_SPDIF_MASK | AC97_CXR_COPYRGT,
            v);
 } else if (ac97->id == AC97_ID_YMF743) {
  change |= snd_ac97_update_bits_nolock(ac97,
            AC97_YMF7X3_DIT_CTRL,
            0xff38,
            ((val << 4) & 0xff00) |
            ((val << 2) & 0x0038));
 } else {
  unsigned short extst = snd_ac97_read_cache(ac97, AC97_EXTENDED_STATUS);
  snd_ac97_update_bits_nolock(ac97, AC97_EXTENDED_STATUS, AC97_EA_SPDIF, 0);

  change |= snd_ac97_update_bits_nolock(ac97, AC97_SPDIF, 0x3fff, val);
  if (extst & AC97_EA_SPDIF) {
   snd_ac97_update_bits_nolock(ac97, AC97_EXTENDED_STATUS, AC97_EA_SPDIF, AC97_EA_SPDIF);
                }
 }
 mutex_unlock(&ac97->reg_mutex);

 return change;
}
