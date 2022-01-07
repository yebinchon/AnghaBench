
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int id; } ;
struct wmfw_halo_id_hdr {int ym_base; int xm_base; TYPE_2__ fw; int n_algs; } ;
struct TYPE_3__ {int id; int ver; } ;
struct wmfw_halo_alg_hdr {int ym_base; int xm_base; TYPE_1__ alg; } ;
struct wm_adsp_region {int base; } ;
struct wm_adsp {int regmap; } ;
typedef int halo_id ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct wmfw_halo_alg_hdr*) ;
 int PTR_ERR (struct wmfw_halo_alg_hdr*) ;
 scalar_t__ WARN_ON (int) ;
 int WMFW_ADSP2_XM ;
 int adsp_err (struct wm_adsp*,char*,int) ;
 int adsp_info (struct wm_adsp*,char*,int,int,int,int,int,int,int) ;
 int be32_to_cpu (int ) ;
 int kfree (struct wmfw_halo_alg_hdr*) ;
 int regmap_raw_read (int ,int ,struct wmfw_halo_id_hdr*,int) ;
 struct wm_adsp_region* wm_adsp_find_region (struct wm_adsp*,int ) ;
 struct wmfw_halo_alg_hdr* wm_adsp_read_algs (struct wm_adsp*,size_t,struct wm_adsp_region const*,unsigned int,unsigned int) ;
 int wm_halo_create_regions (struct wm_adsp*,int ,int ,int ) ;
 int wmfw_v3_parse_id_header (struct wm_adsp*,TYPE_2__*,size_t) ;

__attribute__((used)) static int wm_halo_setup_algs(struct wm_adsp *dsp)
{
 struct wmfw_halo_id_hdr halo_id;
 struct wmfw_halo_alg_hdr *halo_alg;
 const struct wm_adsp_region *mem;
 unsigned int pos, len;
 size_t n_algs;
 int i, ret;

 mem = wm_adsp_find_region(dsp, WMFW_ADSP2_XM);
 if (WARN_ON(!mem))
  return -EINVAL;

 ret = regmap_raw_read(dsp->regmap, mem->base, &halo_id,
         sizeof(halo_id));
 if (ret != 0) {
  adsp_err(dsp, "Failed to read algorithm info: %d\n",
    ret);
  return ret;
 }

 n_algs = be32_to_cpu(halo_id.n_algs);

 wmfw_v3_parse_id_header(dsp, &halo_id.fw, n_algs);

 ret = wm_halo_create_regions(dsp, halo_id.fw.id,
         halo_id.xm_base, halo_id.ym_base);
 if (ret)
  return ret;


 pos = sizeof(halo_id) / sizeof(u32);
 len = (sizeof(*halo_alg) * n_algs) / sizeof(u32);

 halo_alg = wm_adsp_read_algs(dsp, n_algs, mem, pos, len);
 if (IS_ERR(halo_alg))
  return PTR_ERR(halo_alg);

 for (i = 0; i < n_algs; i++) {
  adsp_info(dsp,
     "%d: ID %x v%d.%d.%d XM@%x YM@%x\n",
     i, be32_to_cpu(halo_alg[i].alg.id),
     (be32_to_cpu(halo_alg[i].alg.ver) & 0xff0000) >> 16,
     (be32_to_cpu(halo_alg[i].alg.ver) & 0xff00) >> 8,
     be32_to_cpu(halo_alg[i].alg.ver) & 0xff,
     be32_to_cpu(halo_alg[i].xm_base),
     be32_to_cpu(halo_alg[i].ym_base));

  ret = wm_halo_create_regions(dsp, halo_alg[i].alg.id,
          halo_alg[i].xm_base,
          halo_alg[i].ym_base);
  if (ret)
   goto out;
 }

out:
 kfree(halo_alg);
 return ret;
}
