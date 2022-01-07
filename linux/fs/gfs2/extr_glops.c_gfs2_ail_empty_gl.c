
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int tr ;
struct gfs2_trans {int tr_revokes; scalar_t__ tr_reserved; int tr_ip; int tr_databuf; int tr_buf; } ;
struct gfs2_sbd {int dummy; } ;
struct TYPE_3__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {int gl_ail_count; TYPE_1__ gl_name; } ;
struct TYPE_4__ {struct gfs2_trans* journal_info; } ;


 int GFS2_LFC_AIL_EMPTY_GL ;
 int GFS2_LOG_HEAD_FLUSH_NORMAL ;
 int INIT_LIST_HEAD (int *) ;
 int WARN_ON_ONCE (struct gfs2_trans*) ;
 int _RET_IP_ ;
 int __gfs2_ail_flush (struct gfs2_glock*,int ,int ) ;
 int atomic_read (int *) ;
 TYPE_2__* current ;
 int gfs2_log_flush (struct gfs2_sbd*,int *,int) ;
 scalar_t__ gfs2_log_reserve (struct gfs2_sbd*,scalar_t__) ;
 scalar_t__ gfs2_struct2blk (struct gfs2_sbd*,int ,int) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 int memset (struct gfs2_trans*,int ,int) ;

__attribute__((used)) static void gfs2_ail_empty_gl(struct gfs2_glock *gl)
{
 struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;
 struct gfs2_trans tr;

 memset(&tr, 0, sizeof(tr));
 INIT_LIST_HEAD(&tr.tr_buf);
 INIT_LIST_HEAD(&tr.tr_databuf);
 tr.tr_revokes = atomic_read(&gl->gl_ail_count);

 if (!tr.tr_revokes)
  return;




 tr.tr_reserved = 1 + gfs2_struct2blk(sdp, tr.tr_revokes, sizeof(u64));
 tr.tr_ip = _RET_IP_;
 if (gfs2_log_reserve(sdp, tr.tr_reserved) < 0)
  return;
 WARN_ON_ONCE(current->journal_info);
 current->journal_info = &tr;

 __gfs2_ail_flush(gl, 0, tr.tr_revokes);

 gfs2_trans_end(sdp);
 gfs2_log_flush(sdp, ((void*)0), GFS2_LOG_HEAD_FLUSH_NORMAL |
         GFS2_LFC_AIL_EMPTY_GL);
}
