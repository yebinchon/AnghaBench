
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct uniphier_aio_sub {TYPE_4__* swm; TYPE_2__* aio; } ;
struct regmap {int dummy; } ;
struct TYPE_7__ {int map; } ;
struct TYPE_8__ {TYPE_3__ oport; } ;
struct TYPE_6__ {TYPE_1__* chip; } ;
struct TYPE_5__ {struct regmap* regmap; } ;


 int FIELD_GET (int ,int ) ;
 int OPORTMXTYVOLGAINSTATUS (int ,int ) ;
 int OPORTMXTYVOLGAINSTATUS_CUR_MASK ;
 int regmap_read (struct regmap*,int ,int *) ;

int aio_port_get_volume(struct uniphier_aio_sub *sub)
{
 struct regmap *r = sub->aio->chip->regmap;
 u32 v;

 regmap_read(r, OPORTMXTYVOLGAINSTATUS(sub->swm->oport.map, 0), &v);

 return FIELD_GET(OPORTMXTYVOLGAINSTATUS_CUR_MASK, v);
}
