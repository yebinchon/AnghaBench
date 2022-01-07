
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uniphier_aio_sub {TYPE_3__* swm; } ;
struct uniphier_aio_chip {int num_aios; TYPE_1__* aios; } ;
struct TYPE_5__ {int hw; } ;
struct TYPE_6__ {TYPE_2__ oport; } ;
struct TYPE_4__ {struct uniphier_aio_sub* sub; } ;



__attribute__((used)) static struct uniphier_aio_sub *find_volume(struct uniphier_aio_chip *chip,
         int oport_hw)
{
 int i;

 for (i = 0; i < chip->num_aios; i++) {
  struct uniphier_aio_sub *sub = &chip->aios[i].sub[0];

  if (!sub->swm)
   continue;

  if (sub->swm->oport.hw == oport_hw)
   return sub;
 }

 return ((void*)0);
}
