
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_lockstruct {int ls_recover_flags; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;
typedef int ssize_t ;


 int DFL_BLOCK_LOCKS ;
 int sprintf (char*,char*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static ssize_t block_show(struct gfs2_sbd *sdp, char *buf)
{
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;
 ssize_t ret;
 int val = 0;

 if (test_bit(DFL_BLOCK_LOCKS, &ls->ls_recover_flags))
  val = 1;
 ret = sprintf(buf, "%d\n", val);
 return ret;
}
