
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int * dac_volume; struct generic_data* model_data; } ;
struct generic_data {unsigned int dacs; } ;


 int AK4396_LCH_ATT ;
 int AK4396_RCH_ATT ;
 int ak4396_write_cached (struct oxygen*,unsigned int,int ,int ) ;

__attribute__((used)) static void update_ak4396_volume(struct oxygen *chip)
{
 struct generic_data *data = chip->model_data;
 unsigned int i;

 for (i = 0; i < data->dacs; ++i) {
  ak4396_write_cached(chip, i, AK4396_LCH_ATT,
        chip->dac_volume[i * 2]);
  ak4396_write_cached(chip, i, AK4396_RCH_ATT,
        chip->dac_volume[i * 2 + 1]);
 }
}
