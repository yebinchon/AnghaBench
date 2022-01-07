
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int AK4114_ADDR ;
 int prodigy192_4wire_finish (struct snd_ice1712*,unsigned int) ;
 unsigned int prodigy192_4wire_start (struct snd_ice1712*) ;
 unsigned char read_data (struct snd_ice1712*,unsigned int,int) ;
 int write_data (struct snd_ice1712*,unsigned int,int,int) ;

__attribute__((used)) static unsigned char prodigy192_ak4114_read(void *private_data,
         unsigned char addr)
{
 struct snd_ice1712 *ice = private_data;
 unsigned int tmp;
 unsigned char data;

 tmp = prodigy192_4wire_start(ice);
 write_data(ice, tmp, (AK4114_ADDR << 6) | (addr & 0x1f), 7);
 data = read_data(ice, tmp, 7);
 prodigy192_4wire_finish(ice, tmp);
 return data;
}
