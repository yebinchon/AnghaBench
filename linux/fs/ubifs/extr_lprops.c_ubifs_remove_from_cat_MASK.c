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
struct ubifs_lprops {int /*<<< orphan*/  list; } ;
struct ubifs_info {int freeable_cnt; scalar_t__ in_a_category_cnt; } ;

/* Variables and functions */
#define  LPROPS_DIRTY 134 
#define  LPROPS_DIRTY_IDX 133 
#define  LPROPS_EMPTY 132 
#define  LPROPS_FRDI_IDX 131 
#define  LPROPS_FREE 130 
#define  LPROPS_FREEABLE 129 
#define  LPROPS_UNCAT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,struct ubifs_lprops*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,int) ; 

__attribute__((used)) static void FUNC4(struct ubifs_info *c,
				  struct ubifs_lprops *lprops, int cat)
{
	switch (cat) {
	case LPROPS_DIRTY:
	case LPROPS_DIRTY_IDX:
	case LPROPS_FREE:
		FUNC2(c, lprops, cat);
		break;
	case LPROPS_FREEABLE:
		c->freeable_cnt -= 1;
		FUNC3(c, c->freeable_cnt >= 0);
		/* Fall through */
	case LPROPS_UNCAT:
	case LPROPS_EMPTY:
	case LPROPS_FRDI_IDX:
		FUNC3(c, !FUNC1(&lprops->list));
		FUNC0(&lprops->list);
		break;
	default:
		FUNC3(c, 0);
	}

	c->in_a_category_cnt -= 1;
	FUNC3(c, c->in_a_category_cnt >= 0);
}