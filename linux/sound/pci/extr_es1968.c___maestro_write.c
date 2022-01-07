
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct es1968 {size_t* maestro_map; scalar_t__ io_port; } ;


 scalar_t__ ESM_DATA ;
 scalar_t__ ESM_INDEX ;
 int outw (size_t,scalar_t__) ;

__attribute__((used)) static void __maestro_write(struct es1968 *chip, u16 reg, u16 data)
{
 outw(reg, chip->io_port + ESM_INDEX);
 outw(data, chip->io_port + ESM_DATA);
 chip->maestro_map[reg] = data;
}
