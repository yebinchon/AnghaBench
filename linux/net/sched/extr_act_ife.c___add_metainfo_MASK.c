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
struct tcf_meta_ops {int (* alloc ) (struct tcf_meta_info*,void*,int /*<<< orphan*/ ) ;} ;
struct tcf_meta_info {int /*<<< orphan*/  metalist; struct tcf_meta_ops const* ops; int /*<<< orphan*/  metaid; } ;
struct tcf_ife_info {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  metalist; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct tcf_meta_info*) ; 
 struct tcf_meta_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct tcf_meta_info*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const struct tcf_meta_ops *ops,
			  struct tcf_ife_info *ife, u32 metaid, void *metaval,
			  int len, bool atomic, bool exists)
{
	struct tcf_meta_info *mi = NULL;
	int ret = 0;

	mi = FUNC1(sizeof(*mi), atomic ? GFP_ATOMIC : GFP_KERNEL);
	if (!mi)
		return -ENOMEM;

	mi->metaid = metaid;
	mi->ops = ops;
	if (len > 0) {
		ret = ops->alloc(mi, metaval, atomic ? GFP_ATOMIC : GFP_KERNEL);
		if (ret != 0) {
			FUNC0(mi);
			return ret;
		}
	}

	if (exists)
		FUNC3(&ife->tcf_lock);
	FUNC2(&mi->metalist, &ife->metalist);
	if (exists)
		FUNC4(&ife->tcf_lock);

	return ret;
}