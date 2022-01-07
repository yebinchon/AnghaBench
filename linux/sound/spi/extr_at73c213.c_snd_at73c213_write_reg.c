
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct spi_transfer {int len; size_t* tx_buf; int rx_buf; int cs_change; } ;
struct spi_message {int dummy; } ;
struct snd_at73c213 {size_t* spi_wbuffer; size_t* reg_image; int spi; int spi_rbuffer; } ;


 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static int
snd_at73c213_write_reg(struct snd_at73c213 *chip, u8 reg, u8 val)
{
 struct spi_message msg;
 struct spi_transfer msg_xfer = {
  .len = 2,
  .cs_change = 0,
 };
 int retval;

 spi_message_init(&msg);

 chip->spi_wbuffer[0] = reg;
 chip->spi_wbuffer[1] = val;

 msg_xfer.tx_buf = chip->spi_wbuffer;
 msg_xfer.rx_buf = chip->spi_rbuffer;
 spi_message_add_tail(&msg_xfer, &msg);

 retval = spi_sync(chip->spi, &msg);

 if (!retval)
  chip->reg_image[reg] = val;

 return retval;
}
