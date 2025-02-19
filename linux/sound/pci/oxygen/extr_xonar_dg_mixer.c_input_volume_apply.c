
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {struct dg* model_data; } ;
struct dg {char* cs4245_shadow; } ;


 size_t CS4245_PGA_A_CTRL ;
 size_t CS4245_PGA_B_CTRL ;
 int cs4245_write_spi (struct oxygen*,size_t) ;

__attribute__((used)) static int input_volume_apply(struct oxygen *chip, char left, char right)
{
 struct dg *data = chip->model_data;
 int ret;

 data->cs4245_shadow[CS4245_PGA_A_CTRL] = left;
 data->cs4245_shadow[CS4245_PGA_B_CTRL] = right;
 ret = cs4245_write_spi(chip, CS4245_PGA_A_CTRL);
 if (ret < 0)
  return ret;
 return cs4245_write_spi(chip, CS4245_PGA_B_CTRL);
}
