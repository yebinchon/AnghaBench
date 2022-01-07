
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_priv {int * domain_group_ref; struct madera* madera; } ;
struct madera {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int dev_dbg (int ,char*,int,int ) ;

__attribute__((used)) static void madera_debug_dump_domain_groups(const struct madera_priv *priv)
{
 struct madera *madera = priv->madera;
 int i;

 for (i = 0; i < ARRAY_SIZE(priv->domain_group_ref); ++i)
  dev_dbg(madera->dev, "domain_grp_ref[%d]=%d\n", i,
   priv->domain_group_ref[i]);
}
