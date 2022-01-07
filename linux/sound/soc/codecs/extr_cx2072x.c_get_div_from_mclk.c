
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int mclk; unsigned int div; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* mclk_pre_div ;

__attribute__((used)) static unsigned int get_div_from_mclk(unsigned int mclk)
{
 unsigned int div = 8;
 int i;

 for (i = 0; i < ARRAY_SIZE(mclk_pre_div); i++) {
  if (mclk <= mclk_pre_div[i].mclk) {
   div = mclk_pre_div[i].div;
   break;
  }
 }
 return div;
}
