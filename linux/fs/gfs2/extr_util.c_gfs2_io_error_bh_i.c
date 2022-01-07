
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_flags; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;


 int SDF_WITHDRAWN ;
 int fs_err (struct gfs2_sbd*,char*,unsigned long long,char const*,char*,unsigned int) ;
 int gfs2_lm_withdraw (struct gfs2_sbd*,int *) ;
 int test_bit (int ,int *) ;

void gfs2_io_error_bh_i(struct gfs2_sbd *sdp, struct buffer_head *bh,
   const char *function, char *file, unsigned int line,
   bool withdraw)
{
 if (!test_bit(SDF_WITHDRAWN, &sdp->sd_flags))
  fs_err(sdp,
         "fatal: I/O error\n"
         "  block = %llu\n"
         "  function = %s, file = %s, line = %u\n",
         (unsigned long long)bh->b_blocknr,
         function, file, line);
 if (withdraw)
  gfs2_lm_withdraw(sdp, ((void*)0));
}
