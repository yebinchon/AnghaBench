
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ start_nid; scalar_t__ num_nodes; } ;
struct hda_codec {TYPE_1__ core; int * wcaps; } ;
typedef scalar_t__ hda_nid_t ;



__attribute__((used)) static inline void snd_hda_override_wcaps(struct hda_codec *codec,
       hda_nid_t nid, u32 val)
{
 if (nid >= codec->core.start_nid &&
     nid < codec->core.start_nid + codec->core.num_nodes)
  codec->wcaps[nid - codec->core.start_nid] = val;
}
