
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 unsigned char AK4114_REG_INT0_MASK ;
 unsigned char const prodigy192_ak4114_read (struct snd_ice1712*,unsigned char) ;
 int prodigy192_ak4114_write (struct snd_ice1712*,unsigned char,unsigned char const) ;

__attribute__((used)) static int prodigy192_miodio_exists(struct snd_ice1712 *ice)
{

 unsigned char orig_value;
 const unsigned char test_data = 0xd1;
 unsigned char addr = AK4114_REG_INT0_MASK;
 int exists = 0;

 orig_value = prodigy192_ak4114_read(ice, addr);
 prodigy192_ak4114_write(ice, addr, test_data);
 if (prodigy192_ak4114_read(ice, addr) == test_data) {


  prodigy192_ak4114_write(ice, addr, orig_value);
  exists = 1;
 }
 return exists;
}
