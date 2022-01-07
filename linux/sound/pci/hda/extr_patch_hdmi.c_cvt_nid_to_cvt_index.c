
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_spec {int num_cvts; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
typedef scalar_t__ hda_nid_t ;
struct TYPE_2__ {scalar_t__ cvt_nid; } ;


 int EINVAL ;
 int codec_warn (struct hda_codec*,char*,scalar_t__) ;
 TYPE_1__* get_cvt (struct hdmi_spec*,int) ;

__attribute__((used)) static int cvt_nid_to_cvt_index(struct hda_codec *codec, hda_nid_t cvt_nid)
{
 struct hdmi_spec *spec = codec->spec;
 int cvt_idx;

 for (cvt_idx = 0; cvt_idx < spec->num_cvts; cvt_idx++)
  if (get_cvt(spec, cvt_idx)->cvt_nid == cvt_nid)
   return cvt_idx;

 codec_warn(codec, "HDMI: cvt nid %d not registered\n", cvt_nid);
 return -EINVAL;
}
