
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;

__attribute__((used)) static inline enum dma_data_direction
rpcrdma_data_dir(bool writing)
{
 return writing ? DMA_FROM_DEVICE : DMA_TO_DEVICE;
}
