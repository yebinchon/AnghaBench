
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_dsp_loader_ops {int free_dma_buf; int alloc_dma_buf; } ;


 int memset (struct skl_dsp_loader_ops*,int ,int) ;
 int skl_alloc_dma_buf ;
 int skl_free_dma_buf ;

__attribute__((used)) static struct skl_dsp_loader_ops skl_get_loader_ops(void)
{
 struct skl_dsp_loader_ops loader_ops;

 memset(&loader_ops, 0, sizeof(struct skl_dsp_loader_ops));

 loader_ops.alloc_dma_buf = skl_alloc_dma_buf;
 loader_ops.free_dma_buf = skl_free_dma_buf;

 return loader_ops;
}
