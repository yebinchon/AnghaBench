
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;


 int dump_stack () ;
 int gfs2_lm_withdraw (struct gfs2_sbd*,char*,char*,char const*,char*,unsigned int) ;

int gfs2_assert_withdraw_i(struct gfs2_sbd *sdp, char *assertion,
      const char *function, char *file, unsigned int line)
{
 int me;
 me = gfs2_lm_withdraw(sdp,
         "fatal: assertion \"%s\" failed\n"
         "   function = %s, file = %s, line = %u\n",
         assertion, function, file, line);
 dump_stack();
 return (me) ? -1 : -2;
}
