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
struct ubifs_info {int hmac_desc_len; int /*<<< orphan*/  hmac_tfm; } ;
struct TYPE_6__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,void*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,void const*,int) ; 
 TYPE_1__* shash ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info const*,int) ; 

__attribute__((used)) static int FUNC5(const struct ubifs_info *c, const void *node,
				int len, int ofs_hmac, void *hmac)
{
	FUNC0(shash, c->hmac_tfm);
	int hmac_len = c->hmac_desc_len;
	int err;

	FUNC4(c, ofs_hmac > 8);
	FUNC4(c, ofs_hmac + hmac_len < len);

	shash->tfm = c->hmac_tfm;

	err = FUNC2(shash);
	if (err)
		return err;

	/* behind common node header CRC up to HMAC begin */
	err = FUNC3(shash, node + 8, ofs_hmac - 8);
	if (err < 0)
		return err;

	/* behind HMAC, if any */
	if (len - ofs_hmac - hmac_len > 0) {
		err = FUNC3(shash, node + ofs_hmac + hmac_len,
			    len - ofs_hmac - hmac_len);
		if (err < 0)
			return err;
	}

	return FUNC1(shash, hmac);
}