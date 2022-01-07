
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oxygen {int dummy; } ;


 int _write_uart (struct oxygen*,int ,int ) ;

void oxygen_write_uart(struct oxygen *chip, u8 data)
{
 _write_uart(chip, 0, data);
}
