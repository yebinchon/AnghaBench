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
struct ubifs_pnode {struct ubifs_lprops* lprops; void* num; } ;
struct ubifs_lprops {int free; int dirty; int /*<<< orphan*/  flags; } ;
struct ubifs_info {int pcnt_bits; int space_bits; int /*<<< orphan*/  pnode_sz; scalar_t__ big_lpt; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPROPS_INDEX ; 
 int UBIFS_LPT_CRC_BYTES ; 
 int UBIFS_LPT_FANOUT ; 
 int /*<<< orphan*/  UBIFS_LPT_PNODE ; 
 int FUNC0 (struct ubifs_info const*,void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ubifs_info const*,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info const*,struct ubifs_lprops* const) ; 
 void* FUNC3 (struct ubifs_info const*,int /*<<< orphan*/ **,int*,int) ; 

__attribute__((used)) static int FUNC4(const struct ubifs_info *c, void *buf,
			struct ubifs_pnode *pnode)
{
	uint8_t *addr = buf + UBIFS_LPT_CRC_BYTES;
	int i, pos = 0, err;

	err = FUNC1(c, &addr, &pos, UBIFS_LPT_PNODE);
	if (err)
		return err;
	if (c->big_lpt)
		pnode->num = FUNC3(c, &addr, &pos, c->pcnt_bits);
	for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
		struct ubifs_lprops * const lprops = &pnode->lprops[i];

		lprops->free = FUNC3(c, &addr, &pos, c->space_bits);
		lprops->free <<= 3;
		lprops->dirty = FUNC3(c, &addr, &pos, c->space_bits);
		lprops->dirty <<= 3;

		if (FUNC3(c, &addr, &pos, 1))
			lprops->flags = LPROPS_INDEX;
		else
			lprops->flags = 0;
		lprops->flags |= FUNC2(c, lprops);
	}
	err = FUNC0(c, buf, c->pnode_sz);
	return err;
}