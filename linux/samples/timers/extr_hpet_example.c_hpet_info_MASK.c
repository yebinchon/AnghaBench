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
struct hpet_info {int hi_ireqfreq; int hi_flags; int hi_hpet; int hi_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPET_INFO ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct hpet_info*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC4(int argc, const char **argv)
{
	struct hpet_info	info;
	int			fd;

	if (argc != 1) {
		FUNC1(stderr, "hpet_info: device-name\n");
		return;
	}

	fd = FUNC3(argv[0], O_RDONLY);
	if (fd < 0) {
		FUNC1(stderr, "hpet_info: open of %s failed\n", argv[0]);
		return;
	}

	if (FUNC2(fd, HPET_INFO, &info) < 0) {
		FUNC1(stderr, "hpet_info: failed to get info\n");
		goto out;
	}

	FUNC1(stderr, "hpet_info: hi_irqfreq 0x%x hi_flags 0x%x ",
		info.hi_ireqfreq, info.hi_flags);
	FUNC1(stderr, "hi_hpet %d hi_timer %d\n",
		info.hi_hpet, info.hi_timer);

out:
	FUNC0(fd);
	return;
}