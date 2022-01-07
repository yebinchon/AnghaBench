
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hw {scalar_t__ model; TYPE_1__* card; } ;
struct adc_conf {int msr; } ;
struct TYPE_2__ {int dev; } ;


 int ADC_LINEIN ;
 scalar_t__ CTSB1270 ;
 int EINVAL ;
 int GPIO_CTRL ;
 int GPIO_DATA ;
 int MAKE_WM8775_ADDR (int ,int) ;
 int MAKE_WM8775_DATA (int) ;
 int WM8775_IC ;
 int WM8775_MMC ;
 int dev_alert (int ,char*,...) ;
 int hw20k2_i2c_init (struct hw*,int,int,int) ;
 int hw20k2_i2c_uninit (struct hw*) ;
 int hw20k2_i2c_write (struct hw*,int ,int ) ;
 int hw_adc_input_select (struct hw*,int ) ;
 int hw_read_20kx (struct hw*,int ) ;
 int hw_wm8775_input_select (struct hw*,int ,int ) ;
 int hw_write_20kx (struct hw*,int ,int) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int hw_adc_init(struct hw *hw, const struct adc_conf *info)
{
 int err;
 u32 data, ctl;


 data = hw_read_20kx(hw, GPIO_CTRL);
 data |= (0x1 << 15);
 hw_write_20kx(hw, GPIO_CTRL, data);


 err = hw20k2_i2c_init(hw, 0x1A, 1, 1);
 if (err < 0) {
  dev_alert(hw->card->dev, "Failure to acquire I2C!!!\n");
  goto error;
 }


 data = hw_read_20kx(hw, GPIO_DATA);
 data &= ~(0x1 << 15);
 hw_write_20kx(hw, GPIO_DATA, data);

 if (hw->model == CTSB1270) {

  data &= ~0x0C;
  if (1 == info->msr)
   data |= 0x00;
  else if (2 == info->msr)
   data |= 0x08;
  else
   data |= 0x04;
  hw_write_20kx(hw, GPIO_DATA, data);
 }

 usleep_range(10000, 11000);

 data |= (0x1 << 15);
 hw_write_20kx(hw, GPIO_DATA, data);
 msleep(50);




 hw20k2_i2c_write(hw, MAKE_WM8775_ADDR(WM8775_IC, 0x26),
    MAKE_WM8775_DATA(0x26));


 if (1 == info->msr) {

  hw20k2_i2c_write(hw, MAKE_WM8775_ADDR(WM8775_MMC, 0x02),
      MAKE_WM8775_DATA(0x02));
 } else if ((2 == info->msr) || (4 == info->msr)) {

  hw20k2_i2c_write(hw, MAKE_WM8775_ADDR(WM8775_MMC, 0x0A),
      MAKE_WM8775_DATA(0x0A));
 } else {
  dev_alert(hw->card->dev,
     "Invalid master sampling rate (msr %d)!!!\n",
     info->msr);
  err = -EINVAL;
  goto error;
 }

 if (hw->model != CTSB1270) {

  ctl = hw_read_20kx(hw, GPIO_CTRL);
  ctl |= 0x1 << 14;
  hw_write_20kx(hw, GPIO_CTRL, ctl);
  hw_adc_input_select(hw, ADC_LINEIN);
 } else {
  hw_wm8775_input_select(hw, 0, 0);
 }

 return 0;
error:
 hw20k2_i2c_uninit(hw);
 return err;
}
