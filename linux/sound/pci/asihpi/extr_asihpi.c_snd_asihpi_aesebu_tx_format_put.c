
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;


 int hpi_aesebu_transmitter_set_format ;
 int snd_asihpi_aesebu_format_put (struct snd_kcontrol*,struct snd_ctl_elem_value*,int ) ;

__attribute__((used)) static int snd_asihpi_aesebu_tx_format_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol) {
 return snd_asihpi_aesebu_format_put(kcontrol, ucontrol,
     hpi_aesebu_transmitter_set_format);
}
