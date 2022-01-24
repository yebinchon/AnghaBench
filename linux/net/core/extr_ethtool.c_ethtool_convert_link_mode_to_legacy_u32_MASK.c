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
typedef  unsigned long u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int __ETHTOOL_LINK_MODE_MASK_NBITS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned long const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ext ; 

bool FUNC5(u32 *legacy_u32,
					     const unsigned long *src)
{
	bool retval = true;

	/* TODO: following test will soon always be true */
	if (__ETHTOOL_LINK_MODE_MASK_NBITS > 32) {
		FUNC0(ext);

		FUNC4(ext, __ETHTOOL_LINK_MODE_MASK_NBITS);
		FUNC2(ext, 32);
		FUNC1(ext, ext, __ETHTOOL_LINK_MODE_MASK_NBITS);
		if (FUNC3(ext, src,
				      __ETHTOOL_LINK_MODE_MASK_NBITS)) {
			/* src mask goes beyond bit 31 */
			retval = false;
		}
	}
	*legacy_u32 = src[0];
	return retval;
}