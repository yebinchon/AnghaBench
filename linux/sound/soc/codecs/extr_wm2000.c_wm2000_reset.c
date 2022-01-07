
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm2000_priv {int anc_mode; struct i2c_client* i2c; } ;
struct i2c_client {int dummy; } ;


 int ANC_OFF ;
 int WM2000_ANC_ENG_CLR ;
 int WM2000_RAM_CLR ;
 int WM2000_REG_ID1 ;
 int WM2000_REG_SYS_CTL2 ;
 int wm2000_write (struct i2c_client*,int ,int ) ;

__attribute__((used)) static void wm2000_reset(struct wm2000_priv *wm2000)
{
 struct i2c_client *i2c = wm2000->i2c;

 wm2000_write(i2c, WM2000_REG_SYS_CTL2, WM2000_ANC_ENG_CLR);
 wm2000_write(i2c, WM2000_REG_SYS_CTL2, WM2000_RAM_CLR);
 wm2000_write(i2c, WM2000_REG_ID1, 0);

 wm2000->anc_mode = ANC_OFF;
}
