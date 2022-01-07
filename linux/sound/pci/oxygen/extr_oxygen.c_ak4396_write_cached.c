
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct oxygen {struct generic_data* model_data; } ;
struct generic_data {size_t** ak4396_regs; } ;


 int ak4396_write (struct oxygen*,unsigned int,size_t,size_t) ;

__attribute__((used)) static void ak4396_write_cached(struct oxygen *chip, unsigned int codec,
    u8 reg, u8 value)
{
 struct generic_data *data = chip->model_data;

 if (value != data->ak4396_regs[codec][reg])
  ak4396_write(chip, codec, reg, value);
}
