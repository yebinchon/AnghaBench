
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;



__attribute__((used)) static int dma_dummy_map_sg(struct device *dev, struct scatterlist *sgl,
  int nelems, enum dma_data_direction dir,
  unsigned long attrs)
{
 return 0;
}
