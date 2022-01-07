
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_emu10k1 {int iommu_workaround; TYPE_1__* card; } ;
struct iommu_domain {scalar_t__ type; } ;
struct TYPE_5__ {int bus; } ;
struct TYPE_4__ {TYPE_2__* dev; } ;


 scalar_t__ IOMMU_DOMAIN_IDENTITY ;
 int dev_notice (TYPE_2__*,char*) ;
 struct iommu_domain* iommu_get_domain_for_dev (TYPE_2__*) ;
 int iommu_present (int ) ;

__attribute__((used)) static void snd_emu10k1_detect_iommu(struct snd_emu10k1 *emu)
{
 struct iommu_domain *domain;

 emu->iommu_workaround = 0;

 if (!iommu_present(emu->card->dev->bus))
  return;

 domain = iommu_get_domain_for_dev(emu->card->dev);
 if (domain && domain->type == IOMMU_DOMAIN_IDENTITY)
  return;

 dev_notice(emu->card->dev,
     "non-passthrough IOMMU detected, widening DMA allocations");
 emu->iommu_workaround = 1;
}
