
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int OXYGEN_SPI_CEN_LATCH_CLOCK_LO ;
 int OXYGEN_SPI_CLOCK_160 ;
 int OXYGEN_SPI_CODEC_SHIFT ;
 int OXYGEN_SPI_DATA_LENGTH_2 ;
 int OXYGEN_SPI_TRIGGER ;
 int oxygen_write_spi (struct oxygen*,int,unsigned int) ;

__attribute__((used)) static void wm8776_write_spi(struct oxygen *chip,
        unsigned int reg, unsigned int value)
{
 oxygen_write_spi(chip, OXYGEN_SPI_TRIGGER |
    OXYGEN_SPI_DATA_LENGTH_2 |
    OXYGEN_SPI_CLOCK_160 |
    (1 << OXYGEN_SPI_CODEC_SHIFT) |
    OXYGEN_SPI_CEN_LATCH_CLOCK_LO,
    (reg << 9) | value);
}
