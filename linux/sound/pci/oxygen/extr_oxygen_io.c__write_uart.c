
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oxygen {int dummy; } ;


 int MPU401_TX_FULL ;
 scalar_t__ OXYGEN_MPU401 ;
 int msleep (int) ;
 int oxygen_read8 (struct oxygen*,scalar_t__) ;
 int oxygen_write8 (struct oxygen*,scalar_t__,int ) ;

__attribute__((used)) static void _write_uart(struct oxygen *chip, unsigned int port, u8 data)
{
 if (oxygen_read8(chip, OXYGEN_MPU401 + 1) & MPU401_TX_FULL)
  msleep(1);
 oxygen_write8(chip, OXYGEN_MPU401 + port, data);
}
