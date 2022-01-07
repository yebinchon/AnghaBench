
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int regmap_raw_write (void*,unsigned int,int const*,size_t) ;

__attribute__((used)) static int sigmadsp_write_regmap(void *control_data,
 unsigned int addr, const uint8_t data[], size_t len)
{
 return regmap_raw_write(control_data, addr,
  data, len);
}
