
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnet_dump {scalar_t__ xstats_len; int * xstats; scalar_t__ lock; int skb; } ;


 int kfree (int *) ;
 scalar_t__ nla_put_64bit (int ,int,int,void*,int) ;
 int spin_unlock_bh (scalar_t__) ;

__attribute__((used)) static inline int
gnet_stats_copy(struct gnet_dump *d, int type, void *buf, int size, int padattr)
{
 if (nla_put_64bit(d->skb, type, size, buf, padattr))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 if (d->lock)
  spin_unlock_bh(d->lock);
 kfree(d->xstats);
 d->xstats = ((void*)0);
 d->xstats_len = 0;
 return -1;
}
