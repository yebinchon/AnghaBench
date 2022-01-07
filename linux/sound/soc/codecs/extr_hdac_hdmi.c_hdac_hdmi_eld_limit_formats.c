
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct snd_pcm_runtime {int dummy; } ;


 int SNDRV_PCM_FMTBIT_S16 ;
 int SNDRV_PCM_FMTBIT_S32 ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int * drm_eld_sad (int const*) ;
 int drm_eld_sad_count (int const*) ;
 int sad_format (int const*) ;
 int sad_sample_bits_lpcm (int const*) ;
 int snd_pcm_hw_constraint_mask64 (struct snd_pcm_runtime*,int ,int ) ;

__attribute__((used)) static int hdac_hdmi_eld_limit_formats(struct snd_pcm_runtime *runtime,
      void *eld)
{
 u64 formats = SNDRV_PCM_FMTBIT_S16;
 int i;
 const u8 *sad, *eld_buf = eld;

 sad = drm_eld_sad(eld_buf);
 if (!sad)
  goto format_constraint;

 for (i = drm_eld_sad_count(eld_buf); i > 0; i--, sad += 3) {
  if (sad_format(sad) == 1) {





   if (sad_sample_bits_lpcm(sad) & 0x6)
    formats |= SNDRV_PCM_FMTBIT_S32;
  }
 }

format_constraint:
 return snd_pcm_hw_constraint_mask64(runtime, SNDRV_PCM_HW_PARAM_FORMAT,
    formats);

}
