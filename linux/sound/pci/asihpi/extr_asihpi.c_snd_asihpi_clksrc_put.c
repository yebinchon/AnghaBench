
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int private_value; scalar_t__ private_data; } ;
struct TYPE_4__ {unsigned int* item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct clk_cache {unsigned int count; TYPE_3__* s; } ;
struct snd_card_asihpi {struct clk_cache cc; } ;
struct TYPE_6__ {scalar_t__ source; int index; } ;


 scalar_t__ HPI_SAMPLECLOCK_SOURCE_AESEBU_INPUT ;
 int hpi_handle_error (int ) ;
 int hpi_sample_clock_set_source (int ,scalar_t__) ;
 int hpi_sample_clock_set_source_index (int ,int ) ;

__attribute__((used)) static int snd_asihpi_clksrc_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_card_asihpi *asihpi =
   (struct snd_card_asihpi *)(kcontrol->private_data);
 struct clk_cache *clkcache = &asihpi->cc;
 unsigned int item;
 int change;
 u32 h_control = kcontrol->private_value;

 change = 1;
 item = ucontrol->value.enumerated.item[0];
 if (item >= clkcache->count)
  item = clkcache->count-1;

 hpi_handle_error(hpi_sample_clock_set_source(
    h_control, clkcache->s[item].source));

 if (clkcache->s[item].source == HPI_SAMPLECLOCK_SOURCE_AESEBU_INPUT)
  hpi_handle_error(hpi_sample_clock_set_source_index(
    h_control, clkcache->s[item].index));
 return change;
}
