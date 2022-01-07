
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;


 int gfs2_lm_withdraw (struct gfs2_sbd*,char*,char const*,char*,unsigned int) ;

int gfs2_consist_i(struct gfs2_sbd *sdp, int cluster_wide, const char *function,
     char *file, unsigned int line)
{
 int rv;
 rv = gfs2_lm_withdraw(sdp,
         "fatal: filesystem consistency error - function = %s, file = %s, line = %u\n",
         function, file, line);
 return rv;
}
