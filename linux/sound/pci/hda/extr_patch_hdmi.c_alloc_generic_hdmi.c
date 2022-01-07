
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int get_spk_alloc; int is_pcm_attached; int set_chmap; int get_chmap; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct hdmi_spec {int dev_num; TYPE_2__ chmap; int bind_lock; int pcm_lock; int ops; struct hda_codec* codec; } ;
struct hda_codec {int patch_ops; struct hdmi_spec* spec; int core; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int generic_hdmi_patch_ops ;
 int generic_standard_hdmi_ops ;
 int hdmi_array_init (struct hdmi_spec*,int) ;
 int hdmi_get_chmap ;
 int hdmi_get_spk_alloc ;
 int hdmi_set_chmap ;
 int is_hdmi_pcm_attached ;
 struct hdmi_spec* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int snd_hdac_register_chmap_ops (int *,TYPE_2__*) ;

__attribute__((used)) static int alloc_generic_hdmi(struct hda_codec *codec)
{
 struct hdmi_spec *spec;

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;

 spec->codec = codec;
 spec->ops = generic_standard_hdmi_ops;
 spec->dev_num = 1;
 mutex_init(&spec->pcm_lock);
 mutex_init(&spec->bind_lock);
 snd_hdac_register_chmap_ops(&codec->core, &spec->chmap);

 spec->chmap.ops.get_chmap = hdmi_get_chmap;
 spec->chmap.ops.set_chmap = hdmi_set_chmap;
 spec->chmap.ops.is_pcm_attached = is_hdmi_pcm_attached;
 spec->chmap.ops.get_spk_alloc = hdmi_get_spk_alloc,

 codec->spec = spec;
 hdmi_array_init(spec, 4);

 codec->patch_ops = generic_hdmi_patch_ops;

 return 0;
}
