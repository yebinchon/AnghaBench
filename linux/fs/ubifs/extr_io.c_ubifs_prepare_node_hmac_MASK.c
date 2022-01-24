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
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,void*,int,int) ; 
 int FUNC2 (struct ubifs_info*,void*,int,int) ; 

int FUNC3(struct ubifs_info *c, void *node, int len,
			    int hmac_offs, int pad)
{
	int err;

	FUNC1(c, node, len, pad);

	if (hmac_offs > 0) {
		err = FUNC2(c, node, len, hmac_offs);
		if (err)
			return err;
	}

	FUNC0(c, node, len);

	return 0;
}