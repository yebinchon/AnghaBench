
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (int const*) ;
 int INVALID_IRQ ;
 int MEDIA_FX ;

__attribute__((used)) static unsigned get_irq_config(int sscape_type, int irq)
{
 static const int valid_irq[] = { 9, 5, 7, 10 };
 static const int old_irq[] = { 9, 7, 5, 15 };
 unsigned cfg;

 if (sscape_type == MEDIA_FX) {
  for (cfg = 0; cfg < ARRAY_SIZE(old_irq); ++cfg)
   if (irq == old_irq[cfg])
    return cfg;
 } else {
  for (cfg = 0; cfg < ARRAY_SIZE(valid_irq); ++cfg)
   if (irq == valid_irq[cfg])
    return cfg;
 }

 return INVALID_IRQ;
}
