
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_lockstruct {int ls_recover_flags; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;
typedef int ssize_t ;


 int DFL_FIRST_MOUNT_DONE ;
 int sprintf (char*,char*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static ssize_t first_done_show(struct gfs2_sbd *sdp, char *buf)
{
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;
 return sprintf(buf, "%d\n", !!test_bit(DFL_FIRST_MOUNT_DONE, &ls->ls_recover_flags));
}
