
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hdac_bus {int dummy; } ;
struct TYPE_4__ {struct hdac_bus core; } ;
struct sof_intel_hda_dev {TYPE_2__ hbus; } ;
struct snd_sof_dev {TYPE_1__* pdata; } ;
struct TYPE_3__ {struct sof_intel_hda_dev* hw_pdata; } ;



__attribute__((used)) static inline struct hdac_bus *sof_to_bus(struct snd_sof_dev *s)
{
 struct sof_intel_hda_dev *hda = s->pdata->hw_pdata;

 return &hda->hbus.core;
}
