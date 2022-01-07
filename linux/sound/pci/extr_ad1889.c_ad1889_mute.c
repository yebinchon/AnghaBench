
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_ad1889 {int dummy; } ;


 int AD_DS_WADA ;
 int AD_DS_WADA_LWAM ;
 int AD_DS_WADA_RWAM ;
 int ad1889_readw (struct snd_ad1889*,int ) ;
 int ad1889_writew (struct snd_ad1889*,int ,int) ;

__attribute__((used)) static inline void
ad1889_mute(struct snd_ad1889 *chip)
{
 u16 st;
 st = ad1889_readw(chip, AD_DS_WADA) | AD_DS_WADA_RWAM | AD_DS_WADA_LWAM;
 ad1889_writew(chip, AD_DS_WADA, st);
 ad1889_readw(chip, AD_DS_WADA);
}
