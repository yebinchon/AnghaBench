
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mchp_i2s_mcc_dev {int tx_rdy; int rx_rdy; int regmap; int wq_rxrdy; int channels; int wq_txrdy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MCHP_I2SMCC_IDRA ;
 int MCHP_I2SMCC_IMRA ;
 int MCHP_I2SMCC_IMRB ;
 int MCHP_I2SMCC_INT_RXRDY_MASK (int ) ;
 int MCHP_I2SMCC_INT_TXRDY_MASK (int ) ;
 int MCHP_I2SMCC_ISRA ;
 int MCHP_I2SMCC_ISRB ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t mchp_i2s_mcc_interrupt(int irq, void *dev_id)
{
 struct mchp_i2s_mcc_dev *dev = dev_id;
 u32 sra, imra, srb, imrb, pendinga, pendingb, idra = 0;
 irqreturn_t ret = IRQ_NONE;

 regmap_read(dev->regmap, MCHP_I2SMCC_IMRA, &imra);
 regmap_read(dev->regmap, MCHP_I2SMCC_ISRA, &sra);
 pendinga = imra & sra;

 regmap_read(dev->regmap, MCHP_I2SMCC_IMRB, &imrb);
 regmap_read(dev->regmap, MCHP_I2SMCC_ISRB, &srb);
 pendingb = imrb & srb;

 if (!pendinga && !pendingb)
  return IRQ_NONE;





 idra |= pendinga & (MCHP_I2SMCC_INT_TXRDY_MASK(dev->channels) |
       MCHP_I2SMCC_INT_RXRDY_MASK(dev->channels));
 if (idra)
  ret = IRQ_HANDLED;

 if ((imra & MCHP_I2SMCC_INT_TXRDY_MASK(dev->channels)) &&
     (imra & MCHP_I2SMCC_INT_TXRDY_MASK(dev->channels)) ==
     (idra & MCHP_I2SMCC_INT_TXRDY_MASK(dev->channels))) {
  dev->tx_rdy = 1;
  wake_up_interruptible(&dev->wq_txrdy);
 }
 if ((imra & MCHP_I2SMCC_INT_RXRDY_MASK(dev->channels)) &&
     (imra & MCHP_I2SMCC_INT_RXRDY_MASK(dev->channels)) ==
     (idra & MCHP_I2SMCC_INT_RXRDY_MASK(dev->channels))) {
  dev->rx_rdy = 1;
  wake_up_interruptible(&dev->wq_rxrdy);
 }
 regmap_write(dev->regmap, MCHP_I2SMCC_IDRA, idra);

 return ret;
}
