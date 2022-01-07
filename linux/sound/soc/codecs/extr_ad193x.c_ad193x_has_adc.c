
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad193x_priv {int type; } ;





__attribute__((used)) static inline bool ad193x_has_adc(const struct ad193x_priv *ad193x)
{
 switch (ad193x->type) {
 case 129:
 case 128:
  return 0;
 default:
  break;
 }

 return 1;
}
