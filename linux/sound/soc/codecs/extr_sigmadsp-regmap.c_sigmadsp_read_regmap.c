
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int regmap_raw_read (void*,unsigned int,int *,size_t) ;

__attribute__((used)) static int sigmadsp_read_regmap(void *control_data,
 unsigned int addr, uint8_t data[], size_t len)
{
 return regmap_raw_read(control_data, addr,
  data, len);
}
