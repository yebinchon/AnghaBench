
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_dsp_loader_ops {int cleanup; int trigger; int prepare; int free_dma_buf; int alloc_dma_buf; } ;
typedef int loader_ops ;


 int memset (struct skl_dsp_loader_ops*,int ,int) ;
 int skl_alloc_dma_buf ;
 int skl_dsp_cleanup ;
 int skl_dsp_prepare ;
 int skl_dsp_trigger ;
 int skl_free_dma_buf ;

__attribute__((used)) static struct skl_dsp_loader_ops bxt_get_loader_ops(void)
{
 struct skl_dsp_loader_ops loader_ops;

 memset(&loader_ops, 0, sizeof(loader_ops));

 loader_ops.alloc_dma_buf = skl_alloc_dma_buf;
 loader_ops.free_dma_buf = skl_free_dma_buf;
 loader_ops.prepare = skl_dsp_prepare;
 loader_ops.trigger = skl_dsp_trigger;
 loader_ops.cleanup = skl_dsp_cleanup;

 return loader_ops;
}
