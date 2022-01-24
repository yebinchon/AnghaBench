#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_2__ {scalar_t__ ar_spectator; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_kobj; TYPE_1__ sd_args; struct super_block* sd_vfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

void FUNC3(struct gfs2_sbd *sdp)
{
	struct super_block *sb = sdp->sd_vfs;
	char ro[20];
	char spectator[20];
	char *envp[] = { ro, spectator, NULL };
	FUNC2(ro, "RDONLY=%d", FUNC1(sb));
	FUNC2(spectator, "SPECTATOR=%d", sdp->sd_args.ar_spectator ? 1 : 0);
	FUNC0(&sdp->sd_kobj, KOBJ_ONLINE, envp);
}