
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spec {int num_cvts; int cvt_nids; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
typedef int hda_nid_t ;


 int ARRAY_SIZE (int *) ;
 int codec_dbg (struct hda_codec*,char*,int ) ;
 int memcmp (int *,int ,int) ;
 int snd_hda_get_connections (struct hda_codec*,int ,int *,int ) ;
 int snd_hda_override_conn_list (struct hda_codec*,int ,int,int ) ;

__attribute__((used)) static void intel_haswell_fixup_connect_list(struct hda_codec *codec,
          hda_nid_t nid)
{
 struct hdmi_spec *spec = codec->spec;
 hda_nid_t conns[4];
 int nconns;

 nconns = snd_hda_get_connections(codec, nid, conns, ARRAY_SIZE(conns));
 if (nconns == spec->num_cvts &&
     !memcmp(conns, spec->cvt_nids, spec->num_cvts * sizeof(hda_nid_t)))
  return;


 codec_dbg(codec, "hdmi: haswell: override pin connection 0x%x\n", nid);
 snd_hda_override_conn_list(codec, nid, spec->num_cvts, spec->cvt_nids);
}
