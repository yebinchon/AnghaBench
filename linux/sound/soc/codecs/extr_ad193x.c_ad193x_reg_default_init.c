
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_sequence {int member_0; int member_1; } ;
struct ad193x_priv {int regmap; } ;


 int ARRAY_SIZE (struct reg_sequence const*) ;
 scalar_t__ ad193x_has_adc (struct ad193x_priv*) ;
 int regmap_multi_reg_write (int ,struct reg_sequence const*,int ) ;

__attribute__((used)) static void ad193x_reg_default_init(struct ad193x_priv *ad193x)
{
 static const struct reg_sequence reg_init[] = {
  { 0, 0x99 },
  { 1, 0x04 },
  { 2, 0x40 },
  { 3, 0x00 },
  { 4, 0x1A },
  { 5, 0x00 },
  { 6, 0x00 },
  { 7, 0x00 },
  { 8, 0x00 },
  { 9, 0x00 },
  { 10, 0x00 },
  { 11, 0x00 },
  { 12, 0x00 },
  { 13, 0x00 },
 };
 static const struct reg_sequence reg_adc_init[] = {
  { 14, 0x03 },
  { 15, 0x43 },
  { 16, 0x00 },
 };

 regmap_multi_reg_write(ad193x->regmap, reg_init, ARRAY_SIZE(reg_init));

 if (ad193x_has_adc(ad193x)) {
  regmap_multi_reg_write(ad193x->regmap, reg_adc_init,
           ARRAY_SIZE(reg_adc_init));
 }
}
