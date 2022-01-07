
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fw_ext; int pci_cfg; int lpe; } ;
struct sst_dsp {TYPE_1__ addr; } ;


 int iounmap (int ) ;
 int sst_mem_block_unregister_all (struct sst_dsp*) ;

__attribute__((used)) static void sst_byt_free(struct sst_dsp *sst)
{
 sst_mem_block_unregister_all(sst);
 iounmap(sst->addr.lpe);
 iounmap(sst->addr.pci_cfg);
 iounmap(sst->addr.fw_ext);
}
