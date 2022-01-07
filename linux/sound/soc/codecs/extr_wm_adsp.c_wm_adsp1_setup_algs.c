
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int id; } ;
struct wmfw_adsp1_id_hdr {int dm; TYPE_2__ fw; int zm; int n_algs; } ;
struct TYPE_3__ {int id; int ver; } ;
struct wmfw_adsp1_alg_hdr {TYPE_1__ alg; int zm; int dm; } ;
struct wm_adsp_region {int base; } ;
struct wm_adsp_alg_region {TYPE_1__ alg; int zm; int dm; } ;
struct wm_adsp {scalar_t__ fw_ver; int regmap; } ;
typedef int adsp1_id ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct wmfw_adsp1_alg_hdr*) ;
 int PTR_ERR (struct wmfw_adsp1_alg_hdr*) ;
 int SNDRV_CTL_ELEM_TYPE_BYTES ;
 scalar_t__ WARN_ON (int) ;
 int WMFW_ADSP1_DM ;
 int WMFW_ADSP1_ZM ;
 int adsp_err (struct wm_adsp*,char*,int) ;
 int adsp_info (struct wm_adsp*,char*,int,unsigned int,int,int,int,unsigned int,unsigned int) ;
 int adsp_warn (struct wm_adsp*,char*,unsigned int) ;
 unsigned int be32_to_cpu (int ) ;
 int kfree (struct wmfw_adsp1_alg_hdr*) ;
 int regmap_raw_read (int ,int ,struct wmfw_adsp1_id_hdr*,int) ;
 int wm_adsp_create_control (struct wm_adsp*,struct wmfw_adsp1_alg_hdr*,int ,unsigned int,int *,int ,int ,int ) ;
 struct wmfw_adsp1_alg_hdr* wm_adsp_create_region (struct wm_adsp*,int ,int ,int ) ;
 struct wm_adsp_region* wm_adsp_find_region (struct wm_adsp*,int ) ;
 struct wmfw_adsp1_alg_hdr* wm_adsp_read_algs (struct wm_adsp*,size_t,struct wm_adsp_region const*,unsigned int,unsigned int) ;
 int wmfw_parse_id_header (struct wm_adsp*,TYPE_2__*,size_t) ;

__attribute__((used)) static int wm_adsp1_setup_algs(struct wm_adsp *dsp)
{
 struct wmfw_adsp1_id_hdr adsp1_id;
 struct wmfw_adsp1_alg_hdr *adsp1_alg;
 struct wm_adsp_alg_region *alg_region;
 const struct wm_adsp_region *mem;
 unsigned int pos, len;
 size_t n_algs;
 int i, ret;

 mem = wm_adsp_find_region(dsp, WMFW_ADSP1_DM);
 if (WARN_ON(!mem))
  return -EINVAL;

 ret = regmap_raw_read(dsp->regmap, mem->base, &adsp1_id,
         sizeof(adsp1_id));
 if (ret != 0) {
  adsp_err(dsp, "Failed to read algorithm info: %d\n",
    ret);
  return ret;
 }

 n_algs = be32_to_cpu(adsp1_id.n_algs);

 wmfw_parse_id_header(dsp, &adsp1_id.fw, n_algs);

 alg_region = wm_adsp_create_region(dsp, WMFW_ADSP1_ZM,
        adsp1_id.fw.id, adsp1_id.zm);
 if (IS_ERR(alg_region))
  return PTR_ERR(alg_region);

 alg_region = wm_adsp_create_region(dsp, WMFW_ADSP1_DM,
        adsp1_id.fw.id, adsp1_id.dm);
 if (IS_ERR(alg_region))
  return PTR_ERR(alg_region);


 pos = sizeof(adsp1_id) / sizeof(u32);
 len = (sizeof(*adsp1_alg) * n_algs) / sizeof(u32);

 adsp1_alg = wm_adsp_read_algs(dsp, n_algs, mem, pos, len);
 if (IS_ERR(adsp1_alg))
  return PTR_ERR(adsp1_alg);

 for (i = 0; i < n_algs; i++) {
  adsp_info(dsp, "%d: ID %x v%d.%d.%d DM@%x ZM@%x\n",
     i, be32_to_cpu(adsp1_alg[i].alg.id),
     (be32_to_cpu(adsp1_alg[i].alg.ver) & 0xff0000) >> 16,
     (be32_to_cpu(adsp1_alg[i].alg.ver) & 0xff00) >> 8,
     be32_to_cpu(adsp1_alg[i].alg.ver) & 0xff,
     be32_to_cpu(adsp1_alg[i].dm),
     be32_to_cpu(adsp1_alg[i].zm));

  alg_region = wm_adsp_create_region(dsp, WMFW_ADSP1_DM,
         adsp1_alg[i].alg.id,
         adsp1_alg[i].dm);
  if (IS_ERR(alg_region)) {
   ret = PTR_ERR(alg_region);
   goto out;
  }
  if (dsp->fw_ver == 0) {
   if (i + 1 < n_algs) {
    len = be32_to_cpu(adsp1_alg[i + 1].dm);
    len -= be32_to_cpu(adsp1_alg[i].dm);
    len *= 4;
    wm_adsp_create_control(dsp, alg_region, 0,
           len, ((void*)0), 0, 0,
           SNDRV_CTL_ELEM_TYPE_BYTES);
   } else {
    adsp_warn(dsp, "Missing length info for region DM with ID %x\n",
       be32_to_cpu(adsp1_alg[i].alg.id));
   }
  }

  alg_region = wm_adsp_create_region(dsp, WMFW_ADSP1_ZM,
         adsp1_alg[i].alg.id,
         adsp1_alg[i].zm);
  if (IS_ERR(alg_region)) {
   ret = PTR_ERR(alg_region);
   goto out;
  }
  if (dsp->fw_ver == 0) {
   if (i + 1 < n_algs) {
    len = be32_to_cpu(adsp1_alg[i + 1].zm);
    len -= be32_to_cpu(adsp1_alg[i].zm);
    len *= 4;
    wm_adsp_create_control(dsp, alg_region, 0,
           len, ((void*)0), 0, 0,
           SNDRV_CTL_ELEM_TYPE_BYTES);
   } else {
    adsp_warn(dsp, "Missing length info for region ZM with ID %x\n",
       be32_to_cpu(adsp1_alg[i].alg.id));
   }
  }
 }

out:
 kfree(adsp1_alg);
 return ret;
}
