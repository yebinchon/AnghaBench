
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs5535audio {int dummy; } ;


 int ACC_CODEC_CNTL ;
 int ACC_CODEC_CNTL_LNK_SHUTDOWN ;
 int cs_writel (struct cs5535audio*,int ,int ) ;

__attribute__((used)) static void snd_cs5535audio_stop_hardware(struct cs5535audio *cs5535au)
{
 cs_writel(cs5535au, ACC_CODEC_CNTL, ACC_CODEC_CNTL_LNK_SHUTDOWN);

}
