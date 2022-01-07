
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fsl_sai {int regmap; TYPE_2__* pdev; TYPE_1__* soc_data; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {unsigned int reg_offset; } ;


 int FSL_SAI_CSR_FEF ;
 int FSL_SAI_CSR_FR ;
 int FSL_SAI_CSR_FRF ;
 int FSL_SAI_CSR_FWF ;
 int FSL_SAI_CSR_SEF ;
 int FSL_SAI_CSR_WSF ;
 int FSL_SAI_CSR_xF_MASK ;
 int FSL_SAI_CSR_xF_SHIFT ;
 int FSL_SAI_CSR_xF_W_MASK ;
 int FSL_SAI_CSR_xIE_SHIFT ;
 int FSL_SAI_FLAGS ;
 int FSL_SAI_RCSR (unsigned int) ;
 int FSL_SAI_TCSR (unsigned int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_dbg (struct device*,char*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static irqreturn_t fsl_sai_isr(int irq, void *devid)
{
 struct fsl_sai *sai = (struct fsl_sai *)devid;
 unsigned int ofs = sai->soc_data->reg_offset;
 struct device *dev = &sai->pdev->dev;
 u32 flags, xcsr, mask;
 bool irq_none = 1;






 mask = (FSL_SAI_FLAGS >> FSL_SAI_CSR_xIE_SHIFT) << FSL_SAI_CSR_xF_SHIFT;


 regmap_read(sai->regmap, FSL_SAI_TCSR(ofs), &xcsr);
 flags = xcsr & mask;

 if (flags)
  irq_none = 0;
 else
  goto irq_rx;

 if (flags & FSL_SAI_CSR_WSF)
  dev_dbg(dev, "isr: Start of Tx word detected\n");

 if (flags & FSL_SAI_CSR_SEF)
  dev_dbg(dev, "isr: Tx Frame sync error detected\n");

 if (flags & FSL_SAI_CSR_FEF) {
  dev_dbg(dev, "isr: Transmit underrun detected\n");

  xcsr |= FSL_SAI_CSR_FR;
 }

 if (flags & FSL_SAI_CSR_FWF)
  dev_dbg(dev, "isr: Enabled transmit FIFO is empty\n");

 if (flags & FSL_SAI_CSR_FRF)
  dev_dbg(dev, "isr: Transmit FIFO watermark has been reached\n");

 flags &= FSL_SAI_CSR_xF_W_MASK;
 xcsr &= ~FSL_SAI_CSR_xF_MASK;

 if (flags)
  regmap_write(sai->regmap, FSL_SAI_TCSR(ofs), flags | xcsr);

irq_rx:

 regmap_read(sai->regmap, FSL_SAI_RCSR(ofs), &xcsr);
 flags = xcsr & mask;

 if (flags)
  irq_none = 0;
 else
  goto out;

 if (flags & FSL_SAI_CSR_WSF)
  dev_dbg(dev, "isr: Start of Rx word detected\n");

 if (flags & FSL_SAI_CSR_SEF)
  dev_dbg(dev, "isr: Rx Frame sync error detected\n");

 if (flags & FSL_SAI_CSR_FEF) {
  dev_dbg(dev, "isr: Receive overflow detected\n");

  xcsr |= FSL_SAI_CSR_FR;
 }

 if (flags & FSL_SAI_CSR_FWF)
  dev_dbg(dev, "isr: Enabled receive FIFO is full\n");

 if (flags & FSL_SAI_CSR_FRF)
  dev_dbg(dev, "isr: Receive FIFO watermark has been reached\n");

 flags &= FSL_SAI_CSR_xF_W_MASK;
 xcsr &= ~FSL_SAI_CSR_xF_MASK;

 if (flags)
  regmap_write(sai->regmap, FSL_SAI_RCSR(ofs), flags | xcsr);

out:
 if (irq_none)
  return IRQ_NONE;
 else
  return IRQ_HANDLED;
}
