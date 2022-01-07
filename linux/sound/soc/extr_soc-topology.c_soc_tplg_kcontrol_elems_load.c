
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_tplg {scalar_t__ pass; int pos; int dev; } ;
struct snd_soc_tplg_hdr {int payload_size; int count; int size; } ;
struct TYPE_2__ {int info; } ;
struct snd_soc_tplg_ctl_hdr {TYPE_1__ ops; int size; } ;


 int EINVAL ;
 scalar_t__ SOC_TPLG_PASS_MIXER ;
 int dev_dbg (int ,char*,int ,int ) ;
 int dev_err (int ,char*) ;
 int le32_to_cpu (int ) ;
 int soc_bind_err (struct soc_tplg*,struct snd_soc_tplg_ctl_hdr*,int) ;
 int soc_tplg_dbytes_create (struct soc_tplg*,int,int) ;
 int soc_tplg_denum_create (struct soc_tplg*,int,int) ;
 int soc_tplg_dmixer_create (struct soc_tplg*,int,int) ;
 int soc_tplg_get_offset (struct soc_tplg*) ;

__attribute__((used)) static int soc_tplg_kcontrol_elems_load(struct soc_tplg *tplg,
 struct snd_soc_tplg_hdr *hdr)
{
 struct snd_soc_tplg_ctl_hdr *control_hdr;
 int i;

 if (tplg->pass != SOC_TPLG_PASS_MIXER) {
  tplg->pos += le32_to_cpu(hdr->size) +
   le32_to_cpu(hdr->payload_size);
  return 0;
 }

 dev_dbg(tplg->dev, "ASoC: adding %d kcontrols at 0x%lx\n", hdr->count,
  soc_tplg_get_offset(tplg));

 for (i = 0; i < le32_to_cpu(hdr->count); i++) {

  control_hdr = (struct snd_soc_tplg_ctl_hdr *)tplg->pos;

  if (le32_to_cpu(control_hdr->size) != sizeof(*control_hdr)) {
   dev_err(tplg->dev, "ASoC: invalid control size\n");
   return -EINVAL;
  }

  switch (le32_to_cpu(control_hdr->ops.info)) {
  case 135:
  case 136:
  case 134:
  case 133:
  case 137:
  case 128:
  case 129:
   soc_tplg_dmixer_create(tplg, 1,
            le32_to_cpu(hdr->payload_size));
   break;
  case 139:
  case 138:
  case 132:
  case 130:
  case 131:
   soc_tplg_denum_create(tplg, 1,
           le32_to_cpu(hdr->payload_size));
   break;
  case 140:
   soc_tplg_dbytes_create(tplg, 1,
            le32_to_cpu(hdr->payload_size));
   break;
  default:
   soc_bind_err(tplg, control_hdr, i);
   return -EINVAL;
  }
 }

 return 0;
}
