
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_bus {int dummy; } ;
struct sof_intel_hda_dev {struct hda_bus hbus; } ;
struct snd_sof_dev {TYPE_1__* pdata; } ;
struct TYPE_2__ {struct sof_intel_hda_dev* hw_pdata; } ;



__attribute__((used)) static inline struct hda_bus *sof_to_hbus(struct snd_sof_dev *s)
{
 struct sof_intel_hda_dev *hda = s->pdata->hw_pdata;

 return &hda->hbus;
}
