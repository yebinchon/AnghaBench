
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_tplg {scalar_t__ comp; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* complete ) (scalar_t__) ;} ;


 int stub1 (scalar_t__) ;

__attribute__((used)) static void soc_tplg_complete(struct soc_tplg *tplg)
{
 if (tplg->comp && tplg->ops && tplg->ops->complete)
  tplg->ops->complete(tplg->comp);
}
