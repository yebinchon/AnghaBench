
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;


 int gfs2_lm_withdraw (struct gfs2_sbd*,char*,unsigned long long,char const*,char const*,char*,unsigned int) ;

int gfs2_meta_check_ii(struct gfs2_sbd *sdp, struct buffer_head *bh,
         const char *type, const char *function, char *file,
         unsigned int line)
{
 int me;
 me = gfs2_lm_withdraw(sdp,
         "fatal: invalid metadata block\n"
         "  bh = %llu (%s)\n"
         "  function = %s, file = %s, line = %u\n",
         (unsigned long long)bh->b_blocknr, type,
         function, file, line);
 return (me) ? -1 : -2;
}
