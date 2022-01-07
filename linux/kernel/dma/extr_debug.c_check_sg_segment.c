
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scatterlist {unsigned int length; } ;
struct device {int dummy; } ;


 unsigned int dma_get_max_seg_size (struct device*) ;
 int dma_get_seg_boundary (struct device*) ;
 int err_printk (struct device*,int *,char*,int,int,...) ;
 int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;

__attribute__((used)) static void check_sg_segment(struct device *dev, struct scatterlist *sg)
{
}
