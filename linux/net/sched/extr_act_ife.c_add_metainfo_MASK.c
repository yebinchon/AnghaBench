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
struct tcf_meta_ops {int /*<<< orphan*/  owner; } ;
struct tcf_ife_info {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct tcf_meta_ops const*,struct tcf_ife_info*,int /*<<< orphan*/ ,void*,int,int,int) ; 
 struct tcf_meta_ops* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tcf_ife_info *ife, u32 metaid, void *metaval,
			int len, bool exists)
{
	const struct tcf_meta_ops *ops = FUNC1(metaid);
	int ret;

	if (!ops)
		return -ENOENT;
	ret = FUNC0(ops, ife, metaid, metaval, len, false, exists);
	if (ret)
		/*put back what find_ife_oplist took */
		FUNC2(ops->owner);
	return ret;
}