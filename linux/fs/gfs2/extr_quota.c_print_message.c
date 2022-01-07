
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gfs2_sbd {int dummy; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct gfs2_quota_data {TYPE_3__ qd_id; TYPE_2__* qd_gl; } ;
struct TYPE_4__ {struct gfs2_sbd* ln_sbd; } ;
struct TYPE_5__ {TYPE_1__ gl_name; } ;


 scalar_t__ USRQUOTA ;
 int from_kqid (int *,TYPE_3__) ;
 int fs_info (struct gfs2_sbd*,char*,char*,char*,int ) ;
 int init_user_ns ;

__attribute__((used)) static int print_message(struct gfs2_quota_data *qd, char *type)
{
 struct gfs2_sbd *sdp = qd->qd_gl->gl_name.ln_sbd;

 fs_info(sdp, "quota %s for %s %u\n",
  type,
  (qd->qd_id.type == USRQUOTA) ? "user" : "group",
  from_kqid(&init_user_ns, qd->qd_id));

 return 0;
}
