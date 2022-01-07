
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int name; scalar_t__ item; scalar_t__ items; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 size_t HPI_SOURCENODE_NONE ;
 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 char** asihpi_src_names ;
 int hpi_multiplexer_query_source (int ,scalar_t__,size_t*,size_t*) ;
 scalar_t__ snd_card_asihpi_mux_count_sources (struct snd_kcontrol*) ;
 int sprintf (int ,char*,char*,size_t) ;

__attribute__((used)) static int snd_asihpi_mux_info(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_info *uinfo)
{
 int err;
 u16 src_node_type, src_node_index;
 u32 h_control = kcontrol->private_value;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;
 uinfo->value.enumerated.items =
     snd_card_asihpi_mux_count_sources(kcontrol);

 if (uinfo->value.enumerated.item >= uinfo->value.enumerated.items)
  uinfo->value.enumerated.item =
      uinfo->value.enumerated.items - 1;

 err =
     hpi_multiplexer_query_source(h_control,
     uinfo->value.enumerated.item,
     &src_node_type, &src_node_index);

 sprintf(uinfo->value.enumerated.name, "%s %d",
  asihpi_src_names[src_node_type - HPI_SOURCENODE_NONE],
  src_node_index);
 return 0;
}
