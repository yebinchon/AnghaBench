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
struct fl_flow_mask {int /*<<< orphan*/  ht_node; int /*<<< orphan*/  refcnt; } ;
struct cls_fl_head {int /*<<< orphan*/  ht; } ;
struct cls_fl_filter {struct fl_flow_mask* mask; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct fl_flow_mask*) ; 
 int FUNC1 (struct fl_flow_mask*) ; 
 struct fl_flow_mask* FUNC2 (struct cls_fl_head*,struct fl_flow_mask*) ; 
 int /*<<< orphan*/  mask_ht_params ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct fl_flow_mask* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct cls_fl_head *head,
				struct cls_fl_filter *fnew,
				struct cls_fl_filter *fold,
				struct fl_flow_mask *mask)
{
	struct fl_flow_mask *newmask;
	int ret = 0;

	FUNC3();

	/* Insert mask as temporary node to prevent concurrent creation of mask
	 * with same key. Any concurrent lookups with same key will return
	 * -EAGAIN because mask's refcnt is zero.
	 */
	fnew->mask = FUNC6(&head->ht,
						       &mask->ht_node,
						       mask_ht_params);
	if (!fnew->mask) {
		FUNC4();

		if (fold) {
			ret = -EINVAL;
			goto errout_cleanup;
		}

		newmask = FUNC2(head, mask);
		if (FUNC0(newmask)) {
			ret = FUNC1(newmask);
			goto errout_cleanup;
		}

		fnew->mask = newmask;
		return 0;
	} else if (FUNC0(fnew->mask)) {
		ret = FUNC1(fnew->mask);
	} else if (fold && fold->mask != fnew->mask) {
		ret = -EINVAL;
	} else if (!FUNC5(&fnew->mask->refcnt)) {
		/* Mask was deleted concurrently, try again */
		ret = -EAGAIN;
	}
	FUNC4();
	return ret;

errout_cleanup:
	FUNC7(&head->ht, &mask->ht_node,
			       mask_ht_params);
	return ret;
}