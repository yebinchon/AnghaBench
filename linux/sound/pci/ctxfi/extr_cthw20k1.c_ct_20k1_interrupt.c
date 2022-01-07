
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int irq_callback_data; int (* irq_callback ) (int ,unsigned int) ;} ;
typedef int irqreturn_t ;


 int GIP ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int hw_read_20kx (struct hw*,int ) ;
 int hw_write_20kx (struct hw*,int ,unsigned int) ;
 int stub1 (int ,unsigned int) ;

__attribute__((used)) static irqreturn_t ct_20k1_interrupt(int irq, void *dev_id)
{
 struct hw *hw = dev_id;
 unsigned int status;

 status = hw_read_20kx(hw, GIP);
 if (!status)
  return IRQ_NONE;

 if (hw->irq_callback)
  hw->irq_callback(hw->irq_callback_data, status);

 hw_write_20kx(hw, GIP, status);
 return IRQ_HANDLED;
}
