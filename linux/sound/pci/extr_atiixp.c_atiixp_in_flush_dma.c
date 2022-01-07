
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp {int dummy; } ;


 int ATI_REG_FIFO_IN_FLUSH ;
 int FIFO_FLUSH ;
 int atiixp_write (struct atiixp*,int ,int ) ;

__attribute__((used)) static void atiixp_in_flush_dma(struct atiixp *chip)
{
 atiixp_write(chip, FIFO_FLUSH, ATI_REG_FIFO_IN_FLUSH);
}
