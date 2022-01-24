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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  UBIFS_LPT_CRC_BITS ; 
 int UBIFS_LPT_CRC_BYTES ; 
 scalar_t__ FUNC0 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info const*,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (struct ubifs_info const*,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct ubifs_info *c, void *buf, int len)
{
	int pos = 0;
	uint8_t *addr = buf;
	uint16_t crc, calc_crc;

	crc = FUNC3(c, &addr, &pos, UBIFS_LPT_CRC_BITS);
	calc_crc = FUNC0(-1, buf + UBIFS_LPT_CRC_BYTES,
			 len - UBIFS_LPT_CRC_BYTES);
	if (crc != calc_crc) {
		FUNC2(c, "invalid crc in LPT node: crc %hx calc %hx",
			  crc, calc_crc);
		FUNC1();
		return -EINVAL;
	}
	return 0;
}