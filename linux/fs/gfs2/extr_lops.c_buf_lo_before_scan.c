
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_log_header_host {int dummy; } ;
struct gfs2_jdesc {scalar_t__ jd_replayed_blocks; scalar_t__ jd_found_blocks; } ;



__attribute__((used)) static void buf_lo_before_scan(struct gfs2_jdesc *jd,
          struct gfs2_log_header_host *head, int pass)
{
 if (pass != 0)
  return;

 jd->jd_found_blocks = 0;
 jd->jd_replayed_blocks = 0;
}
