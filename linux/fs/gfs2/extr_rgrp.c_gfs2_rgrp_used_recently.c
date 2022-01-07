
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {TYPE_2__* rgd; } ;
struct gfs2_blkreserv {TYPE_3__ rs_rbm; } ;
struct TYPE_5__ {TYPE_1__* rd_gl; } ;
struct TYPE_4__ {int gl_dstamp; } ;


 int ktime_get_real () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ns (int ) ;

__attribute__((used)) static bool gfs2_rgrp_used_recently(const struct gfs2_blkreserv *rs,
        u64 msecs)
{
 u64 tdiff;

 tdiff = ktime_to_ns(ktime_sub(ktime_get_real(),
                            rs->rs_rbm.rgd->rd_gl->gl_dstamp));

 return tdiff > (msecs * 1000 * 1000);
}
