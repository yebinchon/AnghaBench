#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ubifs_info {int /*<<< orphan*/  hash_tfm; } ;
struct ubifs_ch {int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* shash ; 

int FUNC3(const struct ubifs_info *c, const void *node,
			    u8 *hash)
{
	const struct ubifs_ch *ch = node;
	FUNC0(shash, c->hash_tfm);
	int err;

	shash->tfm = c->hash_tfm;

	err = FUNC1(shash, node, FUNC2(ch->len), hash);
	if (err < 0)
		return err;
	return 0;
}