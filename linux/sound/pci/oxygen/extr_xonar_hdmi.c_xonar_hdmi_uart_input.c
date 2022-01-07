
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oxygen {int uart_input_count; char* uart_input; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int DUMP_PREFIX_OFFSET ;
 int dev_dbg (int ,char*) ;
 int print_hex_dump_bytes (char*,int ,char*,int) ;

void xonar_hdmi_uart_input(struct oxygen *chip)
{
 if (chip->uart_input_count >= 2 &&
     chip->uart_input[chip->uart_input_count - 2] == 'O' &&
     chip->uart_input[chip->uart_input_count - 1] == 'K') {
  dev_dbg(chip->card->dev, "message from HDMI chip received:\n");
  print_hex_dump_bytes("", DUMP_PREFIX_OFFSET,
         chip->uart_input, chip->uart_input_count);
  chip->uart_input_count = 0;
 }
}
