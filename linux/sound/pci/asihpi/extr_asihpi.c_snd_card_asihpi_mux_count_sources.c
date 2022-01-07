
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_kcontrol {int private_value; } ;
struct hpi_control {int src_node_index; int src_node_type; } ;


 int hpi_multiplexer_query_source (int ,int,int *,int *) ;

__attribute__((used)) static int snd_card_asihpi_mux_count_sources(struct snd_kcontrol *snd_control)
{
 u32 h_control = snd_control->private_value;
 struct hpi_control hpi_ctl;
 int s, err;
 for (s = 0; s < 32; s++) {
  err = hpi_multiplexer_query_source(h_control, s,
        &hpi_ctl.
        src_node_type,
        &hpi_ctl.
        src_node_index);
  if (err)
   break;
 }
 return s;
}
