
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int AK4114_ADDR ;
 int ap192_4wire_finish (struct snd_ice1712*,unsigned int) ;
 unsigned int ap192_4wire_start (struct snd_ice1712*) ;
 int write_data (struct snd_ice1712*,unsigned int,unsigned int,int) ;

__attribute__((used)) static void ap192_ak4114_write(void *private_data, unsigned char addr,
          unsigned char data)
{
 struct snd_ice1712 *ice = private_data;
 unsigned int tmp, addrdata;

 tmp = ap192_4wire_start(ice);
 addrdata = (AK4114_ADDR << 6) | 0x20 | (addr & 0x1f);
 addrdata = (addrdata << 8) | data;
 write_data(ice, tmp, addrdata, 15);
 ap192_4wire_finish(ice, tmp);
}
