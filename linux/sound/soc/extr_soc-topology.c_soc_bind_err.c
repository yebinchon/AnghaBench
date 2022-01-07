
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_tplg {int dev; } ;
struct TYPE_2__ {int info; int put; int get; } ;
struct snd_soc_tplg_ctl_hdr {TYPE_1__ ops; } ;


 int dev_err (int ,char*,int ,int ,int ,int,int ) ;
 int soc_tplg_get_offset (struct soc_tplg*) ;

__attribute__((used)) static inline void soc_bind_err(struct soc_tplg *tplg,
 struct snd_soc_tplg_ctl_hdr *hdr, int index)
{
 dev_err(tplg->dev,
  "ASoC: invalid control type (g,p,i) %d:%d:%d index %d at 0x%lx\n",
  hdr->ops.get, hdr->ops.put, hdr->ops.info, index,
  soc_tplg_get_offset(tplg));
}
