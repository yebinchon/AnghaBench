
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_azf3328_codec_data {int dummy; } ;


 int AZF_FREQ_4000 ;
 int snd_azf3328_codec_setfmt (struct snd_azf3328_codec_data*,int ,int,int) ;

__attribute__((used)) static inline void
snd_azf3328_codec_setfmt_lowpower(struct snd_azf3328_codec_data *codec
)
{




 snd_azf3328_codec_setfmt(codec, AZF_FREQ_4000, 8, 1);
}
