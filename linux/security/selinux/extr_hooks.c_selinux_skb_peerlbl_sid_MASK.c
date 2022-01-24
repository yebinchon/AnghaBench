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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  selinux_state ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, u16 family, u32 *sid)
{
	int err;
	u32 xfrm_sid;
	u32 nlbl_sid;
	u32 nlbl_type;

	err = FUNC3(skb, &xfrm_sid);
	if (FUNC4(err))
		return -EACCES;
	err = FUNC2(skb, family, &nlbl_type, &nlbl_sid);
	if (FUNC4(err))
		return -EACCES;

	err = FUNC1(&selinux_state, nlbl_sid,
					   nlbl_type, xfrm_sid, sid);
	if (FUNC4(err)) {
		FUNC0(
		       "SELinux: failure in selinux_skb_peerlbl_sid(),"
		       " unable to determine packet's peer label\n");
		return -EACCES;
	}

	return 0;
}