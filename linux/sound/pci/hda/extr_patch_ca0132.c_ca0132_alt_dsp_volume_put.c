
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {unsigned int* vnode_lvol; unsigned int* vnode_rvol; } ;
typedef scalar_t__ hda_nid_t ;
struct TYPE_2__ {int * reqs; int mid; } ;


 unsigned int DSP_VOL_IN ;
 unsigned int DSP_VOL_OUT ;
 int FLOAT_ZERO ;
 scalar_t__ VNID_SPK ;
 scalar_t__ VNODE_START_NID ;
 TYPE_1__* ca0132_alt_vol_ctls ;
 int dspio_set_uint_param (struct hda_codec*,int ,int ,int ) ;
 int * float_vol_db_lookup ;

__attribute__((used)) static void ca0132_alt_dsp_volume_put(struct hda_codec *codec, hda_nid_t nid)
{
 struct ca0132_spec *spec = codec->spec;
 unsigned int dsp_dir;
 unsigned int lookup_val;

 if (nid == VNID_SPK)
  dsp_dir = DSP_VOL_OUT;
 else
  dsp_dir = DSP_VOL_IN;

 lookup_val = spec->vnode_lvol[nid - VNODE_START_NID];

 dspio_set_uint_param(codec,
  ca0132_alt_vol_ctls[dsp_dir].mid,
  ca0132_alt_vol_ctls[dsp_dir].reqs[0],
  float_vol_db_lookup[lookup_val]);

 lookup_val = spec->vnode_rvol[nid - VNODE_START_NID];

 dspio_set_uint_param(codec,
  ca0132_alt_vol_ctls[dsp_dir].mid,
  ca0132_alt_vol_ctls[dsp_dir].reqs[1],
  float_vol_db_lookup[lookup_val]);

 dspio_set_uint_param(codec,
  ca0132_alt_vol_ctls[dsp_dir].mid,
  ca0132_alt_vol_ctls[dsp_dir].reqs[2], FLOAT_ZERO);
}
