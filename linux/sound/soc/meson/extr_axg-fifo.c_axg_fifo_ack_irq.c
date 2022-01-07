
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct axg_fifo {int map; } ;


 int CTRL1_INT_CLR (int ) ;
 int FIFO_CTRL1 ;
 int FIFO_INT_MASK ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void axg_fifo_ack_irq(struct axg_fifo *fifo, u8 mask)
{
 regmap_update_bits(fifo->map, FIFO_CTRL1,
      CTRL1_INT_CLR(FIFO_INT_MASK),
      CTRL1_INT_CLR(mask));


 regmap_update_bits(fifo->map, FIFO_CTRL1,
      CTRL1_INT_CLR(FIFO_INT_MASK),
      0);
}
