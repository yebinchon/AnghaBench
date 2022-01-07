
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_bridge {int dummy; } ;
struct br_boolopt_multi {int optval; int optmask; } ;


 int BR_BOOLOPT_MAX ;
 int GENMASK (int,int ) ;
 int br_boolopt_get (struct net_bridge const*,int) ;

void br_boolopt_multi_get(const struct net_bridge *br,
     struct br_boolopt_multi *bm)
{
 u32 optval = 0;
 int opt_id;

 for (opt_id = 0; opt_id < BR_BOOLOPT_MAX; opt_id++)
  optval |= (br_boolopt_get(br, opt_id) << opt_id);

 bm->optval = optval;
 bm->optmask = GENMASK((BR_BOOLOPT_MAX - 1), 0);
}
