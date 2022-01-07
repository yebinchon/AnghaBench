
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dvalues; } ;
struct TYPE_4__ {TYPE_1__ control; } ;
struct soc_enum {TYPE_2__ dobj; } ;


 int kfree (int ) ;

__attribute__((used)) static inline void soc_tplg_denum_remove_values(struct soc_enum *se)
{
 kfree(se->dobj.control.dvalues);
}
