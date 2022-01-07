
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int hpi_handle_error (int ) ;
 int hpi_multiplexer_query_source (int ,int ,int *,int *) ;
 int hpi_multiplexer_set_source (int ,int ,int ) ;

__attribute__((used)) static int snd_asihpi_mux_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 int change;
 u32 h_control = kcontrol->private_value;
 u16 source_type, source_index;
 u16 e;

 change = 1;

 e = hpi_multiplexer_query_source(h_control,
        ucontrol->value.enumerated.item[0],
        &source_type, &source_index);
 if (!e)
  hpi_handle_error(
   hpi_multiplexer_set_source(h_control,
      source_type, source_index));
 return change;
}
