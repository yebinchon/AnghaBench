
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_dma_chip {int dummy; } ;


 int dw_dma_remove (struct dw_dma_chip*) ;

__attribute__((used)) static void dw_remove(struct dw_dma_chip *chip)
{
 dw_dma_remove(chip);
}
