
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned int u32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RT5514_SPI_BUF_LEN ;
 unsigned int RT5514_SPI_CMD_BURST_WRITE ;
 int kfree (unsigned int*) ;
 unsigned int* kmalloc (int,int ) ;
 int rt5514_spi ;
 int spi_write (int ,unsigned int*,unsigned int) ;

int rt5514_spi_burst_write(u32 addr, const u8 *txbuf, size_t len)
{
 u8 spi_cmd = RT5514_SPI_CMD_BURST_WRITE;
 u8 *write_buf;
 unsigned int i, end, offset = 0;

 write_buf = kmalloc(RT5514_SPI_BUF_LEN + 6, GFP_KERNEL);

 if (write_buf == ((void*)0))
  return -ENOMEM;

 while (offset < len) {
  if (offset + RT5514_SPI_BUF_LEN <= len)
   end = RT5514_SPI_BUF_LEN;
  else
   end = len % RT5514_SPI_BUF_LEN;

  write_buf[0] = spi_cmd;
  write_buf[1] = ((addr + offset) & 0xff000000) >> 24;
  write_buf[2] = ((addr + offset) & 0x00ff0000) >> 16;
  write_buf[3] = ((addr + offset) & 0x0000ff00) >> 8;
  write_buf[4] = ((addr + offset) & 0x000000ff) >> 0;

  for (i = 0; i < end; i += 8) {
   write_buf[i + 12] = txbuf[offset + i + 0];
   write_buf[i + 11] = txbuf[offset + i + 1];
   write_buf[i + 10] = txbuf[offset + i + 2];
   write_buf[i + 9] = txbuf[offset + i + 3];
   write_buf[i + 8] = txbuf[offset + i + 4];
   write_buf[i + 7] = txbuf[offset + i + 5];
   write_buf[i + 6] = txbuf[offset + i + 6];
   write_buf[i + 5] = txbuf[offset + i + 7];
  }

  write_buf[end + 5] = spi_cmd;

  spi_write(rt5514_spi, write_buf, end + 6);

  offset += RT5514_SPI_BUF_LEN;
 }

 kfree(write_buf);

 return 0;
}
