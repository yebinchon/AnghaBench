
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xonar_wm87x6 {unsigned int* wm8776_regs; } ;
struct TYPE_2__ {int function_flags; } ;
struct oxygen {TYPE_1__ model; struct xonar_wm87x6* model_data; } ;


 unsigned int ARRAY_SIZE (unsigned int*) ;
 int OXYGEN_FUNCTION_2WIRE_SPI_MASK ;
 int OXYGEN_FUNCTION_SPI ;
 unsigned int WM8776_DACMASTER ;
 unsigned int WM8776_HPLVOL ;
 unsigned int WM8776_UPDATE ;
 int wm8776_write_i2c (struct oxygen*,unsigned int,unsigned int) ;
 int wm8776_write_spi (struct oxygen*,unsigned int,unsigned int) ;

__attribute__((used)) static void wm8776_write(struct oxygen *chip,
    unsigned int reg, unsigned int value)
{
 struct xonar_wm87x6 *data = chip->model_data;

 if ((chip->model.function_flags & OXYGEN_FUNCTION_2WIRE_SPI_MASK) ==
     OXYGEN_FUNCTION_SPI)
  wm8776_write_spi(chip, reg, value);
 else
  wm8776_write_i2c(chip, reg, value);
 if (reg < ARRAY_SIZE(data->wm8776_regs)) {
  if (reg >= WM8776_HPLVOL && reg <= WM8776_DACMASTER)
   value &= ~WM8776_UPDATE;
  data->wm8776_regs[reg] = value;
 }
}
