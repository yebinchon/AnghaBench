
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona_fll {int id; int base; unsigned int ref_src; int ref_freq; int clock_ok_name; int lock_name; void* sync_src; struct arizona* arizona; } ;
struct arizona {int regmap; } ;


 unsigned int ARIZONA_CLK_32K_SRC_MASK ;


 int ARIZONA_CLOCK_32K_1 ;
 int ARIZONA_FLL1_FREERUN ;
 void* ARIZONA_FLL_SRC_NONE ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int,int ,int ) ;
 int snprintf (int ,int,char*,int) ;

int arizona_init_fll(struct arizona *arizona, int id, int base, int lock_irq,
       int ok_irq, struct arizona_fll *fll)
{
 unsigned int val;

 fll->id = id;
 fll->base = base;
 fll->arizona = arizona;
 fll->sync_src = ARIZONA_FLL_SRC_NONE;


 regmap_read(arizona->regmap, ARIZONA_CLOCK_32K_1, &val);
 switch (val & ARIZONA_CLK_32K_SRC_MASK) {
 case 129:
 case 128:
  fll->ref_src = val & ARIZONA_CLK_32K_SRC_MASK;
  break;
 default:
  fll->ref_src = ARIZONA_FLL_SRC_NONE;
 }
 fll->ref_freq = 32768;

 snprintf(fll->lock_name, sizeof(fll->lock_name), "FLL%d lock", id);
 snprintf(fll->clock_ok_name, sizeof(fll->clock_ok_name),
   "FLL%d clock OK", id);

 regmap_update_bits(arizona->regmap, fll->base + 1,
      ARIZONA_FLL1_FREERUN, 0);

 return 0;
}
