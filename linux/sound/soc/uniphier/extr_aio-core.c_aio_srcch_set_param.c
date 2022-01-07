
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct uniphier_aio_sub {TYPE_3__* swm; TYPE_2__* aio; } ;
struct regmap {int dummy; } ;
struct TYPE_8__ {int map; } ;
struct TYPE_7__ {TYPE_4__ och; } ;
struct TYPE_6__ {TYPE_1__* chip; } ;
struct TYPE_5__ {struct regmap* regmap; } ;


 int CDA2D_CHMXAMODE_AUPDT_FIX ;
 int CDA2D_CHMXAMODE_AUPDT_INC ;
 int CDA2D_CHMXAMODE_ENDIAN_3210 ;
 int CDA2D_CHMXAMODE_RSSEL_SHIFT ;
 int CDA2D_CHMXAMODE_TYPE_NORMAL ;
 int CDA2D_CHMXAMODE_TYPE_RING ;
 int CDA2D_CHMXCTRL1 (int) ;
 int CDA2D_CHMXCTRL1_INDSIZE_INFINITE ;
 int CDA2D_CHMXDSTAMODE (int) ;
 int CDA2D_CHMXSRCAMODE (int) ;
 int regmap_write (struct regmap*,int ,int) ;

int aio_srcch_set_param(struct uniphier_aio_sub *sub)
{
 struct regmap *r = sub->aio->chip->regmap;

 regmap_write(r, CDA2D_CHMXCTRL1(sub->swm->och.map),
       CDA2D_CHMXCTRL1_INDSIZE_INFINITE);

 regmap_write(r, CDA2D_CHMXSRCAMODE(sub->swm->och.map),
       CDA2D_CHMXAMODE_ENDIAN_3210 |
       CDA2D_CHMXAMODE_AUPDT_FIX |
       CDA2D_CHMXAMODE_TYPE_NORMAL);

 regmap_write(r, CDA2D_CHMXDSTAMODE(sub->swm->och.map),
       CDA2D_CHMXAMODE_ENDIAN_3210 |
       CDA2D_CHMXAMODE_AUPDT_INC |
       CDA2D_CHMXAMODE_TYPE_RING |
       (sub->swm->och.map << CDA2D_CHMXAMODE_RSSEL_SHIFT));

 return 0;
}
