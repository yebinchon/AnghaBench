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
struct ubifs_info {int /*<<< orphan*/  ltab_sz; int /*<<< orphan*/  ltab_offs; int /*<<< orphan*/  ltab_lnum; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct ubifs_info*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ubifs_info*,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ubifs_info *c)
{
	int err;
	void *buf;

	buf = FUNC3(c->ltab_sz);
	if (!buf)
		return -ENOMEM;
	err = FUNC0(c, c->ltab_lnum, buf, c->ltab_offs, c->ltab_sz, 1);
	if (err)
		goto out;
	err = FUNC1(c, buf);
out:
	FUNC2(buf);
	return err;
}