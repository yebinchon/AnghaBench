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
struct TYPE_2__ {scalar_t__ index; } ;
struct ovl_fs {TYPE_1__ config; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

__attribute__((used)) static int FUNC2(struct ovl_fs *ofs, const char *name)
{
	if (ofs->config.index) {
		FUNC0("overlayfs: %s is in-use as upperdir/workdir of another mount, mount with '-o index=off' to override exclusive upperdir protection.\n",
		       name);
		return -EBUSY;
	} else {
		FUNC1("overlayfs: %s is in-use as upperdir/workdir of another mount, accessing files from both mounts will result in undefined behavior.\n",
			name);
		return 0;
	}
}