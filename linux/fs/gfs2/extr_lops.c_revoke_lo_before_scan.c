
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_log_header_host {int lh_tail; } ;
struct gfs2_jdesc {int jd_replay_tail; scalar_t__ jd_found_revokes; } ;



__attribute__((used)) static void revoke_lo_before_scan(struct gfs2_jdesc *jd,
      struct gfs2_log_header_host *head, int pass)
{
 if (pass != 0)
  return;

 jd->jd_found_revokes = 0;
 jd->jd_replay_tail = head->lh_tail;
}
