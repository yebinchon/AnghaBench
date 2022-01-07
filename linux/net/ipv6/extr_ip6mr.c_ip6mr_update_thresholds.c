
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mr_table {int maxvif; } ;
struct TYPE_3__ {int minvif; int maxvif; unsigned char* ttls; int lastuse; } ;
struct TYPE_4__ {TYPE_1__ res; } ;
struct mr_mfc {TYPE_2__ mfc_un; } ;


 int MAXMIFS ;
 scalar_t__ VIF_EXISTS (struct mr_table*,int) ;
 int jiffies ;
 int memset (unsigned char*,int,int) ;

__attribute__((used)) static void ip6mr_update_thresholds(struct mr_table *mrt,
        struct mr_mfc *cache,
        unsigned char *ttls)
{
 int vifi;

 cache->mfc_un.res.minvif = MAXMIFS;
 cache->mfc_un.res.maxvif = 0;
 memset(cache->mfc_un.res.ttls, 255, MAXMIFS);

 for (vifi = 0; vifi < mrt->maxvif; vifi++) {
  if (VIF_EXISTS(mrt, vifi) &&
      ttls[vifi] && ttls[vifi] < 255) {
   cache->mfc_un.res.ttls[vifi] = ttls[vifi];
   if (cache->mfc_un.res.minvif > vifi)
    cache->mfc_un.res.minvif = vifi;
   if (cache->mfc_un.res.maxvif <= vifi)
    cache->mfc_un.res.maxvif = vifi + 1;
  }
 }
 cache->mfc_un.res.lastuse = jiffies;
}
