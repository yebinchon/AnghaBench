
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_nodes; int start_nid; } ;
struct hda_codec {TYPE_1__ core; int * wcaps; } ;
typedef int hda_nid_t ;


 int AC_PAR_AUDIO_WIDGET_CAP ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int * kmalloc_array (int,int,int ) ;
 int snd_hdac_read_parm_uncached (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int read_widget_caps(struct hda_codec *codec, hda_nid_t fg_node)
{
 int i;
 hda_nid_t nid;

 codec->wcaps = kmalloc_array(codec->core.num_nodes, 4, GFP_KERNEL);
 if (!codec->wcaps)
  return -ENOMEM;
 nid = codec->core.start_nid;
 for (i = 0; i < codec->core.num_nodes; i++, nid++)
  codec->wcaps[i] = snd_hdac_read_parm_uncached(&codec->core,
     nid, AC_PAR_AUDIO_WIDGET_CAP);
 return 0;
}
