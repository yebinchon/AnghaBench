
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {scalar_t__ ar_spectator; } ;
struct gfs2_sbd {int sd_kobj; TYPE_1__ sd_args; struct super_block* sd_vfs; } ;


 int KOBJ_ONLINE ;
 int kobject_uevent_env (int *,int ,char**) ;
 int sb_rdonly (struct super_block*) ;
 int sprintf (char*,char*,int) ;

void gfs2_online_uevent(struct gfs2_sbd *sdp)
{
 struct super_block *sb = sdp->sd_vfs;
 char ro[20];
 char spectator[20];
 char *envp[] = { ro, spectator, ((void*)0) };
 sprintf(ro, "RDONLY=%d", sb_rdonly(sb));
 sprintf(spectator, "SPECTATOR=%d", sdp->sd_args.ar_spectator ? 1 : 0);
 kobject_uevent_env(&sdp->sd_kobj, KOBJ_ONLINE, envp);
}
