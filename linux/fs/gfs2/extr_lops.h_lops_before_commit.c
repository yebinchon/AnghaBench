
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_trans {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct TYPE_2__ {int (* lo_before_commit ) (struct gfs2_sbd*,struct gfs2_trans*) ;} ;


 TYPE_1__** gfs2_log_ops ;
 int stub1 (struct gfs2_sbd*,struct gfs2_trans*) ;

__attribute__((used)) static inline void lops_before_commit(struct gfs2_sbd *sdp,
          struct gfs2_trans *tr)
{
 int x;
 for (x = 0; gfs2_log_ops[x]; x++)
  if (gfs2_log_ops[x]->lo_before_commit)
   gfs2_log_ops[x]->lo_before_commit(sdp, tr);
}
