
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct timespec {int dummy; } ;
struct system_device_crosststamp {int device; int sys_realtime; int sys_monoraw; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {int info; } ;
struct snd_pcm_runtime {int tstamp_type; TYPE_1__ hw; } ;
struct snd_pcm_audio_tstamp_report {int accuracy_report; int accuracy; scalar_t__ actual_type; } ;
struct snd_pcm_audio_tstamp_config {scalar_t__ type_requested; scalar_t__ report_delay; } ;
struct TYPE_4__ {int tc; } ;
struct azx_dev {TYPE_2__ core; } ;


 int EINVAL ;
 scalar_t__ SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT ;
 scalar_t__ SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK ;
 scalar_t__ SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK_SYNCHRONIZED ;
 int SNDRV_PCM_INFO_HAS_LINK_ATIME ;


 int azx_adjust_codec_delay (struct snd_pcm_substream*,int ) ;
 int azx_get_crosststamp (struct snd_pcm_substream*,struct system_device_crosststamp*) ;
 int div_u64 (int ,int) ;
 struct azx_dev* get_azx_dev (struct snd_pcm_substream*) ;
 scalar_t__ is_link_time_supported (struct snd_pcm_runtime*,struct snd_pcm_audio_tstamp_config*) ;
 struct timespec ktime_to_timespec (int ) ;
 struct timespec ns_to_timespec (int ) ;
 int snd_pcm_gettime (struct snd_pcm_runtime*,struct timespec*) ;
 int timecounter_read (int *) ;

__attribute__((used)) static int azx_get_time_info(struct snd_pcm_substream *substream,
   struct timespec *system_ts, struct timespec *audio_ts,
   struct snd_pcm_audio_tstamp_config *audio_tstamp_config,
   struct snd_pcm_audio_tstamp_report *audio_tstamp_report)
{
 struct azx_dev *azx_dev = get_azx_dev(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct system_device_crosststamp xtstamp;
 int ret;
 u64 nsec;

 if ((substream->runtime->hw.info & SNDRV_PCM_INFO_HAS_LINK_ATIME) &&
  (audio_tstamp_config->type_requested == SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK)) {

  snd_pcm_gettime(substream->runtime, system_ts);

  nsec = timecounter_read(&azx_dev->core.tc);
  nsec = div_u64(nsec, 3);
  if (audio_tstamp_config->report_delay)
   nsec = azx_adjust_codec_delay(substream, nsec);

  *audio_ts = ns_to_timespec(nsec);

  audio_tstamp_report->actual_type = SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK;
  audio_tstamp_report->accuracy_report = 1;
  audio_tstamp_report->accuracy = 42;

 } else if (is_link_time_supported(runtime, audio_tstamp_config)) {

  ret = azx_get_crosststamp(substream, &xtstamp);
  if (ret)
   return ret;

  switch (runtime->tstamp_type) {
  case 129:
   return -EINVAL;

  case 128:
   *system_ts = ktime_to_timespec(xtstamp.sys_monoraw);
   break;

  default:
   *system_ts = ktime_to_timespec(xtstamp.sys_realtime);
   break;

  }

  *audio_ts = ktime_to_timespec(xtstamp.device);

  audio_tstamp_report->actual_type =
   SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK_SYNCHRONIZED;
  audio_tstamp_report->accuracy_report = 1;

  audio_tstamp_report->accuracy = 42;

 } else {
  audio_tstamp_report->actual_type = SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT;
 }

 return 0;
}
