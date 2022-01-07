
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axg_fifo {int map; } ;


 int CTRL0_DMA_EN ;
 int FIFO_CTRL0 ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void __dma_enable(struct axg_fifo *fifo, bool enable)
{
 regmap_update_bits(fifo->map, FIFO_CTRL0, CTRL0_DMA_EN,
      enable ? CTRL0_DMA_EN : 0);
}
