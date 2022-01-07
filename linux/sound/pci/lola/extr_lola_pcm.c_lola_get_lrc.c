
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lola {int dummy; } ;


 int BAR1 ;
 int LRC ;
 unsigned int lola_readl (struct lola*,int ,int ) ;

__attribute__((used)) static unsigned int lola_get_lrc(struct lola *chip)
{
 return lola_readl(chip, BAR1, LRC);
}
