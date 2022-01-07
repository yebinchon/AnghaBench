
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnet_dump {int xstats_len; scalar_t__ lock; scalar_t__ tail; int xstats; scalar_t__ compat_xstats; } ;


 int GFP_ATOMIC ;
 int TCA_STATS_APP ;
 int TCA_STATS_PAD ;
 int gnet_stats_copy (struct gnet_dump*,int ,void*,int,int ) ;
 int kmemdup (void*,int,int ) ;
 int spin_unlock_bh (scalar_t__) ;

int
gnet_stats_copy_app(struct gnet_dump *d, void *st, int len)
{
 if (d->compat_xstats) {
  d->xstats = kmemdup(st, len, GFP_ATOMIC);
  if (!d->xstats)
   goto err_out;
  d->xstats_len = len;
 }

 if (d->tail)
  return gnet_stats_copy(d, TCA_STATS_APP, st, len,
           TCA_STATS_PAD);

 return 0;

err_out:
 if (d->lock)
  spin_unlock_bh(d->lock);
 d->xstats_len = 0;
 return -1;
}
