
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ln_sbd; } ;
struct gfs2_glock {TYPE_1__ gl_name; } ;


 int BUG () ;



 int LM_ST_DEFERRED ;
 int LM_ST_SHARED ;
 int LM_ST_UNLOCKED ;
 int fs_err (int ,char*,int) ;
 int gfs2_glock_cb (struct gfs2_glock*,int ) ;

__attribute__((used)) static void gdlm_bast(void *arg, int mode)
{
 struct gfs2_glock *gl = arg;

 switch (mode) {
 case 129:
  gfs2_glock_cb(gl, LM_ST_UNLOCKED);
  break;
 case 130:
  gfs2_glock_cb(gl, LM_ST_DEFERRED);
  break;
 case 128:
  gfs2_glock_cb(gl, LM_ST_SHARED);
  break;
 default:
  fs_err(gl->gl_name.ln_sbd, "unknown bast mode %d\n", mode);
  BUG();
 }
}
