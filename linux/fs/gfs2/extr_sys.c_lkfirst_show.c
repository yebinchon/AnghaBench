
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_lockstruct {int ls_first; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t lkfirst_show(struct gfs2_sbd *sdp, char *buf)
{
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;
 return sprintf(buf, "%d\n", ls->ls_first);
}
