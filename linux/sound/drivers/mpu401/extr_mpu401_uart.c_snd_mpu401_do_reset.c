
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mpu401 {int dummy; } ;


 int EIO ;
 int MPU401_ENTER_UART ;
 int MPU401_RESET ;
 scalar_t__ snd_mpu401_uart_cmd (struct snd_mpu401*,int ,int) ;

__attribute__((used)) static int snd_mpu401_do_reset(struct snd_mpu401 *mpu)
{
 if (snd_mpu401_uart_cmd(mpu, MPU401_RESET, 1))
  return -EIO;
 if (snd_mpu401_uart_cmd(mpu, MPU401_ENTER_UART, 0))
  return -EIO;
 return 0;
}
