
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int AUREON_CS8415_CS ;
 int aureon_spi_read (struct snd_ice1712*,int ,int,int,unsigned char*,int) ;
 int aureon_spi_write (struct snd_ice1712*,int ,int,int) ;

__attribute__((used)) static void aureon_cs8415_read(struct snd_ice1712 *ice, int reg,
    unsigned char *buffer, int size)
{
 aureon_spi_write(ice, AUREON_CS8415_CS, 0x2000 | reg, 16);
 aureon_spi_read(ice, AUREON_CS8415_CS, 0x21, 8, buffer, size);
}
