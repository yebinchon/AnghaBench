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
struct ubifs_info {int /*<<< orphan*/  max_write_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,unsigned int) ; 
 unsigned int FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned int) ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info const*,char*,unsigned int,unsigned int,char*) ; 

__attribute__((used)) static int FUNC7(const struct ubifs_info *c, const void *buf,
			unsigned int len)
{
	unsigned int from, to, ffs = FUNC1(1, 2);
	unsigned char *p = (void *)buf;

	from = FUNC5() % len;
	/* Corruption span max to end of write unit */
	to = FUNC3(len, FUNC0(from + 1, c->max_write_size));

	FUNC6(c, "filled bytes %u-%u with %s", from, to - 1,
		   ffs ? "0xFFs" : "random data");

	if (ffs)
		FUNC2(p + from, 0xFF, to - from);
	else
		FUNC4(p + from, to - from);

	return to;
}