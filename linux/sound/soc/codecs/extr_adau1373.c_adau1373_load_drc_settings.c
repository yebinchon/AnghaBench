
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct adau1373 {int regmap; } ;


 scalar_t__ ADAU1373_DRC (unsigned int) ;
 unsigned int ADAU1373_DRC_SIZE ;
 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static void adau1373_load_drc_settings(struct adau1373 *adau1373,
 unsigned int nr, uint8_t *drc)
{
 unsigned int i;

 for (i = 0; i < ADAU1373_DRC_SIZE; ++i)
  regmap_write(adau1373->regmap, ADAU1373_DRC(nr) + i, drc[i]);
}
