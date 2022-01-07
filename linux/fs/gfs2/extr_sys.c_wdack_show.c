
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_wdack; } ;
typedef int ssize_t ;


 scalar_t__ completion_done (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t wdack_show(struct gfs2_sbd *sdp, char *buf)
{
 int val = completion_done(&sdp->sd_wdack) ? 1 : 0;

 return sprintf(buf, "%d\n", val);
}
