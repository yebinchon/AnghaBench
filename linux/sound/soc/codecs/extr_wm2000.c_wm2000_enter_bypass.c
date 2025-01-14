
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm2000_priv {scalar_t__ anc_mode; } ;
struct i2c_client {int dev; } ;


 scalar_t__ ANC_ACTIVE ;
 scalar_t__ ANC_BYPASS ;
 int EINVAL ;
 int ETIMEDOUT ;
 scalar_t__ WARN_ON (int) ;
 int WM2000_ANC_ENG_IDLE ;
 int WM2000_MODE_ANA_SEQ_INCLUDE ;
 int WM2000_MODE_BYPASS_ENTRY ;
 int WM2000_MODE_THERMAL_ENABLE ;
 int WM2000_RAM_CLR ;
 int WM2000_REG_ANC_STAT ;
 int WM2000_REG_SYS_CTL1 ;
 int WM2000_REG_SYS_CTL2 ;
 int WM2000_REG_SYS_MODE_CNTRL ;
 int WM2000_REG_SYS_STATUS ;
 int WM2000_STATUS_ANC_DISABLED ;
 int WM2000_SYS_STBY ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 struct wm2000_priv* dev_get_drvdata (int *) ;
 int wm2000_poll_bit (struct i2c_client*,int ,int ) ;
 int wm2000_write (struct i2c_client*,int ,int) ;

__attribute__((used)) static int wm2000_enter_bypass(struct i2c_client *i2c, int analogue)
{
 struct wm2000_priv *wm2000 = dev_get_drvdata(&i2c->dev);

 if (WARN_ON(wm2000->anc_mode != ANC_ACTIVE))
  return -EINVAL;

 if (analogue) {
  wm2000_write(i2c, WM2000_REG_SYS_MODE_CNTRL,
        WM2000_MODE_ANA_SEQ_INCLUDE |
        WM2000_MODE_THERMAL_ENABLE |
        WM2000_MODE_BYPASS_ENTRY);
 } else {
  wm2000_write(i2c, WM2000_REG_SYS_MODE_CNTRL,
        WM2000_MODE_THERMAL_ENABLE |
        WM2000_MODE_BYPASS_ENTRY);
 }

 if (!wm2000_poll_bit(i2c, WM2000_REG_SYS_STATUS,
        WM2000_STATUS_ANC_DISABLED)) {
  dev_err(&i2c->dev, "Timeout waiting for ANC disable\n");
  return -ETIMEDOUT;
 }

 if (!wm2000_poll_bit(i2c, WM2000_REG_ANC_STAT,
        WM2000_ANC_ENG_IDLE)) {
  dev_err(&i2c->dev, "Timeout waiting for ANC engine idle\n");
  return -ETIMEDOUT;
 }

 wm2000_write(i2c, WM2000_REG_SYS_CTL1, WM2000_SYS_STBY);
 wm2000_write(i2c, WM2000_REG_SYS_CTL2, WM2000_RAM_CLR);

 wm2000->anc_mode = ANC_BYPASS;
 dev_dbg(&i2c->dev, "bypass enabled\n");

 return 0;
}
