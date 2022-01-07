
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int TLV320AIC23_ACTIVE ;
 int TLV320AIC23_ANLG ;
 int TLV320AIC23_BYPASS_ON ;
 int TLV320AIC23_DEEMP_44K ;
 int TLV320AIC23_DEFAULT_OUT_VOL ;
 int TLV320AIC23_DIGT ;
 int TLV320AIC23_LCHNVOL ;
 int TLV320AIC23_LIM_MUTED ;
 int TLV320AIC23_LINVOL ;
 int TLV320AIC23_LRS_ENABLED ;
 int TLV320AIC23_MICM_MUTED ;
 int TLV320AIC23_OUT_VOL_MASK ;
 int TLV320AIC23_RCHNVOL ;
 int TLV320AIC23_RESET ;
 int TLV320AIC23_RINVOL ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int tlv320aic23_component_probe(struct snd_soc_component *component)
{

 snd_soc_component_write(component, TLV320AIC23_RESET, 0);

 snd_soc_component_write(component, TLV320AIC23_DIGT, TLV320AIC23_DEEMP_44K);


 snd_soc_component_update_bits(component, TLV320AIC23_LINVOL,
       TLV320AIC23_LIM_MUTED, TLV320AIC23_LRS_ENABLED);

 snd_soc_component_update_bits(component, TLV320AIC23_RINVOL,
       TLV320AIC23_LIM_MUTED, TLV320AIC23_LRS_ENABLED);

 snd_soc_component_update_bits(component, TLV320AIC23_ANLG,
       TLV320AIC23_BYPASS_ON | TLV320AIC23_MICM_MUTED,
       0);


 snd_soc_component_write(component, TLV320AIC23_LCHNVOL,
        TLV320AIC23_DEFAULT_OUT_VOL & TLV320AIC23_OUT_VOL_MASK);
 snd_soc_component_write(component, TLV320AIC23_RCHNVOL,
        TLV320AIC23_DEFAULT_OUT_VOL & TLV320AIC23_OUT_VOL_MASK);

 snd_soc_component_write(component, TLV320AIC23_ACTIVE, 0x1);

 return 0;
}
