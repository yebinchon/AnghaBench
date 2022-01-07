
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt5514_dsp {int buf_base; int buf_limit; int buf_rp; int buf_size; int copy_work; scalar_t__ get_size; int substream; } ;
typedef int buf ;


 int RT5514_BUFFER_VOICE_BASE ;
 int RT5514_BUFFER_VOICE_LIMIT ;
 int RT5514_BUFFER_VOICE_WP ;
 int rt5514_spi_burst_read (int ,int*,int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void rt5514_schedule_copy(struct rt5514_dsp *rt5514_dsp)
{
 u8 buf[8];

 if (!rt5514_dsp->substream)
  return;

 rt5514_dsp->get_size = 0;






 rt5514_spi_burst_read(RT5514_BUFFER_VOICE_BASE, (u8 *)&buf,
  sizeof(buf));
 rt5514_dsp->buf_base = buf[0] | buf[1] << 8 | buf[2] << 16 |
    buf[3] << 24;

 rt5514_spi_burst_read(RT5514_BUFFER_VOICE_LIMIT, (u8 *)&buf,
  sizeof(buf));
 rt5514_dsp->buf_limit = buf[0] | buf[1] << 8 | buf[2] << 16 |
    buf[3] << 24;

 rt5514_spi_burst_read(RT5514_BUFFER_VOICE_WP, (u8 *)&buf,
  sizeof(buf));
 rt5514_dsp->buf_rp = buf[0] | buf[1] << 8 | buf[2] << 16 |
    buf[3] << 24;

 if (rt5514_dsp->buf_rp % 8)
  rt5514_dsp->buf_rp = (rt5514_dsp->buf_rp / 8) * 8;

 rt5514_dsp->buf_size = rt5514_dsp->buf_limit - rt5514_dsp->buf_base;

 if (rt5514_dsp->buf_base && rt5514_dsp->buf_limit &&
  rt5514_dsp->buf_rp && rt5514_dsp->buf_size)
  schedule_delayed_work(&rt5514_dsp->copy_work, 0);
}
