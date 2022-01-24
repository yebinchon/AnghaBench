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
typedef  void* uint16_t ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 int UBIFS_LPT_CRC_BITS ; 
 int UBIFS_LPT_CRC_BYTES ; 
 int UBIFS_LPT_NOT_A_NODE ; 
 int UBIFS_LPT_TYPE_BITS ; 
 void* FUNC0 (int,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct ubifs_info const*,int) ; 
 void* FUNC2 (struct ubifs_info const*,int /*<<< orphan*/ **,int*,int) ; 

__attribute__((used)) static int FUNC3(const struct ubifs_info *c, uint8_t *buf, int len)
{
	uint8_t *addr = buf + UBIFS_LPT_CRC_BYTES;
	int pos = 0, node_type, node_len;
	uint16_t crc, calc_crc;

	if (len < UBIFS_LPT_CRC_BYTES + (UBIFS_LPT_TYPE_BITS + 7) / 8)
		return 0;
	node_type = FUNC2(c, &addr, &pos, UBIFS_LPT_TYPE_BITS);
	if (node_type == UBIFS_LPT_NOT_A_NODE)
		return 0;
	node_len = FUNC1(c, node_type);
	if (!node_len || node_len > len)
		return 0;
	pos = 0;
	addr = buf;
	crc = FUNC2(c, &addr, &pos, UBIFS_LPT_CRC_BITS);
	calc_crc = FUNC0(-1, buf + UBIFS_LPT_CRC_BYTES,
			 node_len - UBIFS_LPT_CRC_BYTES);
	if (crc != calc_crc)
		return 0;
	return 1;
}