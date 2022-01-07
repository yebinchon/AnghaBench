
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lola {int dummy; } ;


 int lola_update_ext_clock_freq (struct lola*,unsigned int) ;

__attribute__((used)) static void lola_queue_unsol_event(struct lola *chip, unsigned int res,
       unsigned int res_ex)
{
 lola_update_ext_clock_freq(chip, res);
}
