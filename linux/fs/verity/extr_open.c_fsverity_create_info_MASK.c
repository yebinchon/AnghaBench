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
struct inode {int /*<<< orphan*/  i_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  digest_size; TYPE_2__* hash_alg; } ;
struct fsverity_info {int /*<<< orphan*/  measurement; TYPE_1__ tree_params; int /*<<< orphan*/  root_hash; struct inode const* inode; } ;
struct fsverity_descriptor {int version; int salt_size; int /*<<< orphan*/  root_hash; int /*<<< orphan*/  salt; int /*<<< orphan*/  log_blocksize; int /*<<< orphan*/  hash_algorithm; int /*<<< orphan*/  data_size; int /*<<< orphan*/  __reserved; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct fsverity_info* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (TYPE_2__*,struct fsverity_descriptor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode const*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct fsverity_info*) ; 
 int /*<<< orphan*/  fsverity_info_cachep ; 
 int FUNC4 (TYPE_1__*,struct inode const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct fsverity_info*,struct fsverity_descriptor*,size_t) ; 
 struct fsverity_info* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct fsverity_info *FUNC11(const struct inode *inode,
					   void *_desc, size_t desc_size)
{
	struct fsverity_descriptor *desc = _desc;
	struct fsverity_info *vi;
	int err;

	if (desc_size < sizeof(*desc)) {
		FUNC2(inode, "Unrecognized descriptor size: %zu bytes",
			     desc_size);
		return FUNC0(-EINVAL);
	}

	if (desc->version != 1) {
		FUNC2(inode, "Unrecognized descriptor version: %u",
			     desc->version);
		return FUNC0(-EINVAL);
	}

	if (FUNC8(desc->__reserved, 0, sizeof(desc->__reserved))) {
		FUNC2(inode, "Reserved bits set in descriptor");
		return FUNC0(-EINVAL);
	}

	if (desc->salt_size > sizeof(desc->salt)) {
		FUNC2(inode, "Invalid salt_size: %u", desc->salt_size);
		return FUNC0(-EINVAL);
	}

	if (FUNC7(desc->data_size) != inode->i_size) {
		FUNC2(inode,
			     "Wrong data_size: %llu (desc) != %lld (inode)",
			     FUNC7(desc->data_size), inode->i_size);
		return FUNC0(-EINVAL);
	}

	vi = FUNC6(fsverity_info_cachep, GFP_KERNEL);
	if (!vi)
		return FUNC0(-ENOMEM);
	vi->inode = inode;

	err = FUNC4(&vi->tree_params, inode,
					       desc->hash_algorithm,
					       desc->log_blocksize,
					       desc->salt, desc->salt_size);
	if (err) {
		FUNC2(inode,
			     "Error %d initializing Merkle tree parameters",
			     err);
		goto out;
	}

	FUNC9(vi->root_hash, desc->root_hash, vi->tree_params.digest_size);

	err = FUNC1(vi->tree_params.hash_alg, desc,
				       vi->measurement);
	if (err) {
		FUNC2(inode, "Error %d computing file measurement", err);
		goto out;
	}
	FUNC10("Computed file measurement: %s:%*phN\n",
		 vi->tree_params.hash_alg->name,
		 vi->tree_params.digest_size, vi->measurement);

	err = FUNC5(vi, desc, desc_size);
out:
	if (err) {
		FUNC3(vi);
		vi = FUNC0(err);
	}
	return vi;
}