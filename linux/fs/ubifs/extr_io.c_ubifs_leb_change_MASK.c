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
struct ubifs_info {int /*<<< orphan*/  ubi; scalar_t__ ro_error; int /*<<< orphan*/  ro_mount; int /*<<< orphan*/  ro_media; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*) ; 
 int FUNC1 (struct ubifs_info*,int,void const*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int,void const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,int) ; 

int FUNC7(struct ubifs_info *c, int lnum, const void *buf, int len)
{
	int err;

	FUNC4(c, !c->ro_media && !c->ro_mount);
	if (c->ro_error)
		return -EROFS;
	if (!FUNC0(c))
		err = FUNC3(c->ubi, lnum, buf, len);
	else
		err = FUNC1(c, lnum, buf, len);
	if (err) {
		FUNC5(c, "changing %d bytes in LEB %d failed, error %d",
			  len, lnum, err);
		FUNC6(c, err);
		FUNC2();
	}
	return err;
}