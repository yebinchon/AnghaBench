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
struct fl_flow_tmplt {int /*<<< orphan*/  mask; } ;
struct fl_flow_mask {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 long* FUNC0 (int /*<<< orphan*/ *,struct fl_flow_mask*) ; 
 int FUNC1 (struct fl_flow_mask*) ; 

__attribute__((used)) static bool FUNC2(struct fl_flow_tmplt *tmplt,
			       struct fl_flow_mask *mask)
{
	const long *lmask = FUNC0(&mask->key, mask);
	const long *ltmplt;
	int i;

	if (!tmplt)
		return true;
	ltmplt = FUNC0(&tmplt->mask, mask);
	for (i = 0; i < FUNC1(mask); i += sizeof(long)) {
		if (~*ltmplt++ & *lmask++)
			return false;
	}
	return true;
}