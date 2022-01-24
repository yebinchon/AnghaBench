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
struct ubifs_info {int /*<<< orphan*/  ubi; } ;

/* Variables and functions */
 int EROFS ; 
 int FUNC0 (struct ubifs_info*,void const*,int) ; 
 scalar_t__ FUNC1 (struct ubifs_info*) ; 
 int FUNC2 (struct ubifs_info*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,void const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,char*,int,int,int) ; 

int FUNC5(struct ubifs_info *c, int lnum, const void *buf,
		  int offs, int len)
{
	int err, failing;

	if (FUNC1(c))
		return -EROFS;

	failing = FUNC2(c, lnum, 1);
	if (failing) {
		len = FUNC0(c, buf, len);
		FUNC4(c, "actually write %d bytes to LEB %d:%d (the buffer was corrupted)",
			   len, lnum, offs);
	}
	err = FUNC3(c->ubi, lnum, buf, offs, len);
	if (err)
		return err;
	if (failing)
		return -EROFS;
	return 0;
}