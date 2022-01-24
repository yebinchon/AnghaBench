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
struct aa_label {int secid; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AA_FIRST_SECID ; 
 int AA_SECID_INVALID ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  aa_secids ; 
 int FUNC1 (int /*<<< orphan*/ *,struct aa_label*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  secid_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct aa_label *label, gfp_t gfp)
{
	unsigned long flags;
	int ret;

	FUNC2(gfp);
	FUNC4(&secid_lock, flags);
	ret = FUNC1(&aa_secids, label, AA_FIRST_SECID, 0, GFP_ATOMIC);
	FUNC5(&secid_lock, flags);
	FUNC3();

	if (ret < 0) {
		label->secid = AA_SECID_INVALID;
		return ret;
	}

	FUNC0(ret == AA_SECID_INVALID);
	label->secid = ret;
	return 0;
}