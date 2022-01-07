
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bdi_writeback {TYPE_1__* bdi; } ;
struct TYPE_2__ {unsigned long min_ratio; unsigned long max_ratio; } ;



__attribute__((used)) static void wb_min_max_ratio(struct bdi_writeback *wb,
        unsigned long *minp, unsigned long *maxp)
{
 *minp = wb->bdi->min_ratio;
 *maxp = wb->bdi->max_ratio;
}
