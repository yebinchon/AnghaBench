
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct wav_fmt {scalar_t__ channels; scalar_t__ bits_per_sample; scalar_t__ samples_per_sec; } ;
struct nhlt_specific_cfg {scalar_t__ size; scalar_t__ caps; } ;
struct TYPE_2__ {struct wav_fmt fmt; } ;
struct nhlt_fmt_cfg {struct nhlt_specific_cfg config; TYPE_1__ fmt_ext; } ;
struct nhlt_fmt {int fmt_count; struct nhlt_fmt_cfg* fmt_config; } ;
struct device {int dummy; } ;


 scalar_t__ NHLT_LINK_DMIC ;
 int dev_dbg (struct device*,char*,scalar_t__,...) ;

__attribute__((used)) static struct nhlt_specific_cfg *skl_get_specific_cfg(
  struct device *dev, struct nhlt_fmt *fmt,
  u8 no_ch, u32 rate, u16 bps, u8 linktype)
{
 struct nhlt_specific_cfg *sp_config;
 struct wav_fmt *wfmt;
 struct nhlt_fmt_cfg *fmt_config = fmt->fmt_config;
 int i;

 dev_dbg(dev, "Format count =%d\n", fmt->fmt_count);

 for (i = 0; i < fmt->fmt_count; i++) {
  wfmt = &fmt_config->fmt_ext.fmt;
  dev_dbg(dev, "ch=%d fmt=%d s_rate=%d\n", wfmt->channels,
    wfmt->bits_per_sample, wfmt->samples_per_sec);
  if (wfmt->channels == no_ch && wfmt->bits_per_sample == bps) {




   sp_config = &fmt_config->config;
   if (linktype == NHLT_LINK_DMIC)
    return sp_config;

   if (wfmt->samples_per_sec == rate)
    return sp_config;
  }

  fmt_config = (struct nhlt_fmt_cfg *)(fmt_config->config.caps +
      fmt_config->config.size);
 }

 return ((void*)0);
}
