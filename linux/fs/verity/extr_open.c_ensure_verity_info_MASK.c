#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_2__* i_sb; } ;
struct fsverity_info {int dummy; } ;
struct fsverity_descriptor {int dummy; } ;
struct TYPE_4__ {TYPE_1__* s_vop; } ;
struct TYPE_3__ {int (* get_verity_descriptor ) (struct inode*,struct fsverity_descriptor*,int) ;} ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int FS_VERITY_MAX_DESCRIPTOR_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct fsverity_info*) ; 
 int FUNC1 (struct fsverity_info*) ; 
 struct fsverity_info* FUNC2 (struct inode*,struct fsverity_descriptor*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,char*,int) ; 
 struct fsverity_info* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct fsverity_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct fsverity_descriptor*) ; 
 struct fsverity_descriptor* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,struct fsverity_descriptor*,int) ; 
 int FUNC9 (struct inode*,struct fsverity_descriptor*,int) ; 

__attribute__((used)) static int FUNC10(struct inode *inode)
{
	struct fsverity_info *vi = FUNC4(inode);
	struct fsverity_descriptor *desc;
	int res;

	if (vi)
		return 0;

	res = inode->i_sb->s_vop->get_verity_descriptor(inode, NULL, 0);
	if (res < 0) {
		FUNC3(inode,
			     "Error %d getting verity descriptor size", res);
		return res;
	}
	if (res > FS_VERITY_MAX_DESCRIPTOR_SIZE) {
		FUNC3(inode, "Verity descriptor is too large (%d bytes)",
			     res);
		return -EMSGSIZE;
	}
	desc = FUNC7(res, GFP_KERNEL);
	if (!desc)
		return -ENOMEM;
	res = inode->i_sb->s_vop->get_verity_descriptor(inode, desc, res);
	if (res < 0) {
		FUNC3(inode, "Error %d reading verity descriptor", res);
		goto out_free_desc;
	}

	vi = FUNC2(inode, desc, res);
	if (FUNC0(vi)) {
		res = FUNC1(vi);
		goto out_free_desc;
	}

	FUNC5(inode, vi);
	res = 0;
out_free_desc:
	FUNC6(desc);
	return res;
}