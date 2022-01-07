
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int MPU401_RX_EMPTY ;
 scalar_t__ OXYGEN_MPU401 ;
 int oxygen_read8 (struct oxygen*,scalar_t__) ;

__attribute__((used)) static inline int oxygen_uart_input_ready(struct oxygen *chip)
{
 return !(oxygen_read8(chip, OXYGEN_MPU401 + 1) & MPU401_RX_EMPTY);
}
