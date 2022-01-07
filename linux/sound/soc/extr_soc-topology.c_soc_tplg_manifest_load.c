
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_tplg {scalar_t__ pass; int index; scalar_t__ comp; TYPE_1__* ops; scalar_t__ pos; } ;
struct snd_soc_tplg_manifest {int size; } ;
struct snd_soc_tplg_hdr {int dummy; } ;
struct TYPE_2__ {int (* manifest ) (scalar_t__,int ,struct snd_soc_tplg_manifest*) ;} ;


 scalar_t__ SOC_TPLG_PASS_MANIFEST ;
 int kfree (struct snd_soc_tplg_manifest*) ;
 int le32_to_cpu (int ) ;
 int manifest_new_ver (struct soc_tplg*,struct snd_soc_tplg_manifest*,struct snd_soc_tplg_manifest**) ;
 int stub1 (scalar_t__,int ,struct snd_soc_tplg_manifest*) ;

__attribute__((used)) static int soc_tplg_manifest_load(struct soc_tplg *tplg,
      struct snd_soc_tplg_hdr *hdr)
{
 struct snd_soc_tplg_manifest *manifest, *_manifest;
 bool abi_match;
 int err;

 if (tplg->pass != SOC_TPLG_PASS_MANIFEST)
  return 0;

 manifest = (struct snd_soc_tplg_manifest *)tplg->pos;


 if (le32_to_cpu(manifest->size) == sizeof(*manifest)) {
  abi_match = 1;
  _manifest = manifest;
 } else {
  abi_match = 0;
  err = manifest_new_ver(tplg, manifest, &_manifest);
  if (err < 0)
   return err;
 }


 if (tplg->comp && tplg->ops && tplg->ops->manifest)
  return tplg->ops->manifest(tplg->comp, tplg->index, _manifest);

 if (!abi_match)
  kfree(_manifest);

 return 0;
}
