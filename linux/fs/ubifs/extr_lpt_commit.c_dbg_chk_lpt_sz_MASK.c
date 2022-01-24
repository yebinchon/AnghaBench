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
struct ubifs_info {long long leb_size; long long lpt_sz; long long pnode_sz; long long nnode_sz; long long ltab_sz; long long lsave_sz; int /*<<< orphan*/  big_lpt; scalar_t__ nnode_cnt; scalar_t__ pnode_cnt; int /*<<< orphan*/  nhead_offs; scalar_t__ dirty_nn_cnt; scalar_t__ dirty_pn_cnt; struct ubifs_debug_info* dbg; } ;
struct ubifs_debug_info {int chk_lpt_sz; long long chk_lpt_sz2; int chk_lpt_lebs; int chk_lpt_wastage; int new_nhead_offs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,char*,long long,long long,...) ; 

int FUNC5(struct ubifs_info *c, int action, int len)
{
	struct ubifs_debug_info *d = c->dbg;
	long long chk_lpt_sz, lpt_sz;
	int err = 0;

	if (!FUNC0(c))
		return 0;

	switch (action) {
	case 0:
		d->chk_lpt_sz = 0;
		d->chk_lpt_sz2 = 0;
		d->chk_lpt_lebs = 0;
		d->chk_lpt_wastage = 0;
		if (c->dirty_pn_cnt > c->pnode_cnt) {
			FUNC4(c, "dirty pnodes %d exceed max %d",
				  c->dirty_pn_cnt, c->pnode_cnt);
			err = -EINVAL;
		}
		if (c->dirty_nn_cnt > c->nnode_cnt) {
			FUNC4(c, "dirty nnodes %d exceed max %d",
				  c->dirty_nn_cnt, c->nnode_cnt);
			err = -EINVAL;
		}
		return err;
	case 1:
		d->chk_lpt_sz += len;
		return 0;
	case 2:
		d->chk_lpt_sz += len;
		d->chk_lpt_wastage += len;
		d->chk_lpt_lebs += 1;
		return 0;
	case 3:
		chk_lpt_sz = c->leb_size;
		chk_lpt_sz *= d->chk_lpt_lebs;
		chk_lpt_sz += len - c->nhead_offs;
		if (d->chk_lpt_sz != chk_lpt_sz) {
			FUNC4(c, "LPT wrote %lld but space used was %lld",
				  d->chk_lpt_sz, chk_lpt_sz);
			err = -EINVAL;
		}
		if (d->chk_lpt_sz > c->lpt_sz) {
			FUNC4(c, "LPT wrote %lld but lpt_sz is %lld",
				  d->chk_lpt_sz, c->lpt_sz);
			err = -EINVAL;
		}
		if (d->chk_lpt_sz2 && d->chk_lpt_sz != d->chk_lpt_sz2) {
			FUNC4(c, "LPT layout size %lld but wrote %lld",
				  d->chk_lpt_sz, d->chk_lpt_sz2);
			err = -EINVAL;
		}
		if (d->chk_lpt_sz2 && d->new_nhead_offs != len) {
			FUNC4(c, "LPT new nhead offs: expected %d was %d",
				  d->new_nhead_offs, len);
			err = -EINVAL;
		}
		lpt_sz = (long long)c->pnode_cnt * c->pnode_sz;
		lpt_sz += (long long)c->nnode_cnt * c->nnode_sz;
		lpt_sz += c->ltab_sz;
		if (c->big_lpt)
			lpt_sz += c->lsave_sz;
		if (d->chk_lpt_sz - d->chk_lpt_wastage > lpt_sz) {
			FUNC4(c, "LPT chk_lpt_sz %lld + waste %lld exceeds %lld",
				  d->chk_lpt_sz, d->chk_lpt_wastage, lpt_sz);
			err = -EINVAL;
		}
		if (err) {
			FUNC2(c);
			FUNC3(c);
			FUNC1();
		}
		d->chk_lpt_sz2 = d->chk_lpt_sz;
		d->chk_lpt_sz = 0;
		d->chk_lpt_wastage = 0;
		d->chk_lpt_lebs = 0;
		d->new_nhead_offs = len;
		return err;
	case 4:
		d->chk_lpt_sz += len;
		d->chk_lpt_wastage += len;
		return 0;
	default:
		return -EINVAL;
	}
}