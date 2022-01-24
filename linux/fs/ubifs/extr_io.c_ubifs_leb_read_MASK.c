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
 int EBADMSG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int,void*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info const*,char*,int,int,int,int) ; 

int FUNC3(const struct ubifs_info *c, int lnum, void *buf, int offs,
		   int len, int even_ebadmsg)
{
	int err;

	err = FUNC1(c->ubi, lnum, buf, offs, len);
	/*
	 * In case of %-EBADMSG print the error message only if the
	 * @even_ebadmsg is true.
	 */
	if (err && (err != -EBADMSG || even_ebadmsg)) {
		FUNC2(c, "reading %d bytes from LEB %d:%d failed, error %d",
			  len, lnum, offs, err);
		FUNC0();
	}
	return err;
}