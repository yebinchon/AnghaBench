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
typedef  int /*<<< orphan*/  uint32_t ;
struct kvec {int dummy; } ;
struct jffs2_sb_info {int /*<<< orphan*/  mtd; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jffs2_sb_info*) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (struct jffs2_sb_info*,struct kvec const*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct kvec const*,unsigned long,scalar_t__,size_t*) ; 

int FUNC4(struct jffs2_sb_info *c, const struct kvec *vecs,
			      unsigned long count, loff_t to, size_t *retlen)
{
	if (!FUNC0(c)) {
		if (FUNC1()) {
			int res;
			res = FUNC2(c, vecs, count, (uint32_t) to);
			if (res) {
				return res;
			}
		}
	}

	return FUNC3(c->mtd, vecs, count, to, retlen);
}