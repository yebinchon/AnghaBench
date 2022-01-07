
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {scalar_t__ index; int iface; int private_value; int name; } ;
struct hpi_control {size_t src_node_type; size_t dst_node_type; int src_node_index; int dst_node_index; int name; int h_control; } ;


 scalar_t__ HPI_DESTNODE_ISTREAM ;
 scalar_t__ HPI_DESTNODE_NONE ;
 scalar_t__ HPI_SOURCENODE_CLOCK_SOURCE ;
 scalar_t__ HPI_SOURCENODE_NONE ;
 scalar_t__ HPI_SOURCENODE_OSTREAM ;
 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 char** asihpi_dst_names ;
 char** asihpi_src_names ;
 int memset (struct snd_kcontrol_new*,int ,int) ;
 int sprintf (int ,char*,char*,int,char*,...) ;

__attribute__((used)) static void asihpi_ctl_init(struct snd_kcontrol_new *snd_control,
    struct hpi_control *hpi_ctl,
    char *name)
{
 char *dir;
 memset(snd_control, 0, sizeof(*snd_control));
 snd_control->name = hpi_ctl->name;
 snd_control->private_value = hpi_ctl->h_control;
 snd_control->iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 snd_control->index = 0;

 if (hpi_ctl->src_node_type + HPI_SOURCENODE_NONE == HPI_SOURCENODE_CLOCK_SOURCE)
  dir = "";
 else if (hpi_ctl->dst_node_type + HPI_DESTNODE_NONE == HPI_DESTNODE_ISTREAM)
  dir = "Capture ";
 else if ((hpi_ctl->src_node_type + HPI_SOURCENODE_NONE != HPI_SOURCENODE_OSTREAM) &&
  (!hpi_ctl->dst_node_type))
  dir = "Capture ";
 else if (hpi_ctl->src_node_type &&
  (hpi_ctl->src_node_type + HPI_SOURCENODE_NONE != HPI_SOURCENODE_OSTREAM) &&
  (hpi_ctl->dst_node_type))
  dir = "Monitor Playback ";
 else
  dir = "Playback ";

 if (hpi_ctl->src_node_type && hpi_ctl->dst_node_type)
  sprintf(hpi_ctl->name, "%s %d %s %d %s%s",
   asihpi_src_names[hpi_ctl->src_node_type],
   hpi_ctl->src_node_index,
   asihpi_dst_names[hpi_ctl->dst_node_type],
   hpi_ctl->dst_node_index,
   dir, name);
 else if (hpi_ctl->dst_node_type) {
  sprintf(hpi_ctl->name, "%s %d %s%s",
  asihpi_dst_names[hpi_ctl->dst_node_type],
  hpi_ctl->dst_node_index,
  dir, name);
 } else {
  sprintf(hpi_ctl->name, "%s %d %s%s",
  asihpi_src_names[hpi_ctl->src_node_type],
  hpi_ctl->src_node_index,
  dir, name);
 }


}
