
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp_alg_region {int type; int list; void* base; void* alg; } ;
struct wm_adsp {scalar_t__ fw_ver; int alg_regions; } ;
typedef int __be32 ;


 int ENOMEM ;
 struct wm_adsp_alg_region* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 void* be32_to_cpu (int ) ;
 struct wm_adsp_alg_region* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int wm_adsp_ctl_fixup_base (struct wm_adsp*,struct wm_adsp_alg_region*) ;

__attribute__((used)) static struct wm_adsp_alg_region *wm_adsp_create_region(struct wm_adsp *dsp,
       int type, __be32 id,
       __be32 base)
{
 struct wm_adsp_alg_region *alg_region;

 alg_region = kzalloc(sizeof(*alg_region), GFP_KERNEL);
 if (!alg_region)
  return ERR_PTR(-ENOMEM);

 alg_region->type = type;
 alg_region->alg = be32_to_cpu(id);
 alg_region->base = be32_to_cpu(base);

 list_add_tail(&alg_region->list, &dsp->alg_regions);

 if (dsp->fw_ver > 0)
  wm_adsp_ctl_fixup_base(dsp, alg_region);

 return alg_region;
}
