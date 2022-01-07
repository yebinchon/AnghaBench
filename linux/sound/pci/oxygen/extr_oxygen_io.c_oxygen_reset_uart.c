
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int MPU401_ENTER_UART ;
 int MPU401_RESET ;
 int _write_uart (struct oxygen*,int,int ) ;
 int msleep (int) ;

void oxygen_reset_uart(struct oxygen *chip)
{
 _write_uart(chip, 1, MPU401_RESET);
 msleep(1);
 _write_uart(chip, 1, MPU401_ENTER_UART);
}
