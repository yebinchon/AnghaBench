
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long idx_growth; long long data_growth; long long dd_growth; } ;
struct ubifs_info {int space_lock; TYPE_1__ bi; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static long long get_liability(struct ubifs_info *c)
{
 long long liab;

 spin_lock(&c->space_lock);
 liab = c->bi.idx_growth + c->bi.data_growth + c->bi.dd_growth;
 spin_unlock(&c->space_lock);
 return liab;
}
