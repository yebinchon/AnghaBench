
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {struct generic_data* model_data; } ;
struct generic_data {int * wm8785_regs; } ;


 int WM8785_R0 ;
 int WM8785_R2 ;
 int WM8785_R7 ;
 int wm8785_write (struct oxygen*,int ,int ) ;

__attribute__((used)) static void wm8785_registers_init(struct oxygen *chip)
{
 struct generic_data *data = chip->model_data;

 wm8785_write(chip, WM8785_R7, 0);
 wm8785_write(chip, WM8785_R0, data->wm8785_regs[0]);
 wm8785_write(chip, WM8785_R2, data->wm8785_regs[2]);
}
