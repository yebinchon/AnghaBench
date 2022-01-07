
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs5535audio {int dummy; } ;


 int ACC_BM0_CMD ;
 int cs_writeb (struct cs5535audio*,int ,int ) ;

__attribute__((used)) static void cs5535audio_playback_disable_dma(struct cs5535audio *cs5535au)
{
 cs_writeb(cs5535au, ACC_BM0_CMD, 0);
}
