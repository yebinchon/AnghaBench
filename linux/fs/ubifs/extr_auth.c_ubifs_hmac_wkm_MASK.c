#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  well_known_message ;
typedef  int /*<<< orphan*/  u8 ;
struct ubifs_info {int /*<<< orphan*/  hmac_tfm; } ;
struct TYPE_6__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,char const*,int) ; 
 TYPE_1__* shash ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*) ; 

int FUNC5(struct ubifs_info *c, u8 *hmac)
{
	FUNC0(shash, c->hmac_tfm);
	int err;
	const char well_known_message[] = "UBIFS";

	if (!FUNC4(c))
		return 0;

	shash->tfm = c->hmac_tfm;

	err = FUNC2(shash);
	if (err)
		return err;

	err = FUNC3(shash, well_known_message,
				  sizeof(well_known_message) - 1);
	if (err < 0)
		return err;

	err = FUNC1(shash, hmac);
	if (err)
		return err;
	return 0;
}