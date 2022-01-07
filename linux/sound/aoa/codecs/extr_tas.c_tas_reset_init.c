
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_9__ {TYPE_3__* gpio; } ;
struct tas {int acr; int bass; int treble; TYPE_2__ codec; } ;
struct TYPE_10__ {TYPE_1__* methods; } ;
struct TYPE_8__ {int (* all_amps_restore ) (TYPE_3__*) ;int (* set_hw_reset ) (TYPE_3__*,int) ;int (* all_amps_off ) (TYPE_3__*) ;} ;


 int ENODEV ;
 int TAS3004_BASS_ZERO ;
 int TAS3004_TREBLE_ZERO ;
 int TAS_ACR_ANALOG_PDOWN ;
 int TAS_MCS_SCLK64 ;
 int TAS_MCS_SPORT_MODE_I2S ;
 int TAS_MCS_SPORT_WL_24BIT ;
 int TAS_REG_ACR ;
 int TAS_REG_MCS ;
 int TAS_REG_MCS2 ;
 int msleep (int) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*,int) ;
 int stub3 (TYPE_3__*,int) ;
 int stub4 (TYPE_3__*,int) ;
 int stub5 (TYPE_3__*) ;
 int tas3004_set_drc (struct tas*) ;
 int tas_set_bass (struct tas*) ;
 int tas_set_treble (struct tas*) ;
 scalar_t__ tas_write_reg (struct tas*,int ,int,int*) ;

__attribute__((used)) static int tas_reset_init(struct tas *tas)
{
 u8 tmp;

 tas->codec.gpio->methods->all_amps_off(tas->codec.gpio);
 msleep(5);
 tas->codec.gpio->methods->set_hw_reset(tas->codec.gpio, 0);
 msleep(5);
 tas->codec.gpio->methods->set_hw_reset(tas->codec.gpio, 1);
 msleep(20);
 tas->codec.gpio->methods->set_hw_reset(tas->codec.gpio, 0);
 msleep(10);
 tas->codec.gpio->methods->all_amps_restore(tas->codec.gpio);

 tmp = TAS_MCS_SCLK64 | TAS_MCS_SPORT_MODE_I2S | TAS_MCS_SPORT_WL_24BIT;
 if (tas_write_reg(tas, TAS_REG_MCS, 1, &tmp))
  goto outerr;

 tas->acr |= TAS_ACR_ANALOG_PDOWN;
 if (tas_write_reg(tas, TAS_REG_ACR, 1, &tas->acr))
  goto outerr;

 tmp = 0;
 if (tas_write_reg(tas, TAS_REG_MCS2, 1, &tmp))
  goto outerr;

 tas3004_set_drc(tas);


 tas->treble = TAS3004_TREBLE_ZERO;
 tas->bass = TAS3004_BASS_ZERO;
 tas_set_treble(tas);
 tas_set_bass(tas);

 tas->acr &= ~TAS_ACR_ANALOG_PDOWN;
 if (tas_write_reg(tas, TAS_REG_ACR, 1, &tas->acr))
  goto outerr;

 return 0;
 outerr:
 return -ENODEV;
}
