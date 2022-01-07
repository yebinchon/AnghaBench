
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ar_data; } ;
struct gfs2_sbd {TYPE_1__ sd_args; } ;


 scalar_t__ GFS2_DATA_WRITEBACK ;

__attribute__((used)) static inline bool gfs2_is_writeback(const struct gfs2_sbd *sdp)
{
 return sdp->sd_args.ar_data == GFS2_DATA_WRITEBACK;
}
