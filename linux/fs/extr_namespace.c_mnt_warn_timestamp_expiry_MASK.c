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
struct vfsmount {struct super_block* mnt_sb; } ;
struct tm {scalar_t__ tm_year; } ;
struct super_block {scalar_t__ s_time_max; TYPE_1__* s_type; } ;
struct path {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ TIME_UPTIME_SEC_MAX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vfsmount*) ; 
 char* FUNC3 (struct path*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,scalar_t__,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,struct tm*) ; 

__attribute__((used)) static void FUNC8(struct path *mountpoint, struct vfsmount *mnt)
{
	struct super_block *sb = mnt->mnt_sb;

	if (!FUNC2(mnt) &&
	   (FUNC5() + TIME_UPTIME_SEC_MAX > sb->s_time_max)) {
		char *buf = (char *)FUNC1(GFP_KERNEL);
		char *mntpath = buf ? FUNC3(mountpoint, buf, PAGE_SIZE) : FUNC0(-ENOMEM);
		struct tm tm;

		FUNC7(sb->s_time_max, 0, &tm);

		FUNC6("Mounted %s file system at %s supports timestamps until %04ld (0x%llx)\n",
			sb->s_type->name, mntpath,
			tm.tm_year+1900, (unsigned long long)sb->s_time_max);

		FUNC4((unsigned long)buf);
	}
}