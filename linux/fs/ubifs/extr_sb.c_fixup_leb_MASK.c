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
struct ubifs_info {int min_io_size; int leb_size; int /*<<< orphan*/  sbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,int) ; 
 int FUNC2 (struct ubifs_info*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ubifs_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct ubifs_info*,int) ; 

__attribute__((used)) static int FUNC5(struct ubifs_info *c, int lnum, int len)
{
	int err;

	FUNC1(c, len >= 0);
	FUNC1(c, len % c->min_io_size == 0);
	FUNC1(c, len < c->leb_size);

	if (len == 0) {
		FUNC0("unmap empty LEB %d", lnum);
		return FUNC4(c, lnum);
	}

	FUNC0("fixup LEB %d, data len %d", lnum, len);
	err = FUNC3(c, lnum, c->sbuf, 0, len, 1);
	if (err)
		return err;

	return FUNC2(c, lnum, c->sbuf, len);
}