#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 long EINVAL ; 
 long ENOIOCTLCMD ; 
 scalar_t__ ORANGEFS_DEV_MAGIC ; 
 int /*<<< orphan*/  ORANGEFS_DEV_MAXNR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,scalar_t__,...) ; 

__attribute__((used)) static inline long FUNC3(unsigned int command)
{
	/* Check for valid ioctl codes */
	if (FUNC1(command) != ORANGEFS_DEV_MAGIC) {
		FUNC2("device ioctl magic numbers don't match! Did you rebuild pvfs2-client-core/libpvfs2? [cmd %x, magic %x != %x]\n",
			command,
			FUNC1(command),
			ORANGEFS_DEV_MAGIC);
		return -EINVAL;
	}
	/* and valid ioctl commands */
	if (FUNC0(command) >= ORANGEFS_DEV_MAXNR || FUNC0(command) <= 0) {
		FUNC2("Invalid ioctl command number [%d >= %d]\n",
			   FUNC0(command), ORANGEFS_DEV_MAXNR);
		return -ENOIOCTLCMD;
	}
	return 0;
}