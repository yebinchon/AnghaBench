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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct merkle_tree_params {int digest_size; unsigned int log_blocksize; int block_size; int log_arity; int hashes_per_block; scalar_t__ num_levels; int* level_start; int tree_size; struct fsverity_hash_alg const* hashstate; struct fsverity_hash_alg const* hash_alg; } ;
struct inode {int /*<<< orphan*/  i_size; } ;
struct fsverity_hash_alg {int digest_size; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FS_VERITY_MAX_LEVELS ; 
 scalar_t__ FUNC0 (struct fsverity_hash_alg const*) ; 
 unsigned int PAGE_SHIFT ; 
 int FUNC1 (struct fsverity_hash_alg const*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode const*,char*,...) ; 
 struct fsverity_hash_alg* FUNC4 (struct inode const*,unsigned int) ; 
 struct fsverity_hash_alg const* FUNC5 (struct fsverity_hash_alg const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct inode const*,char*,int,...) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct fsverity_hash_alg const*) ; 
 int /*<<< orphan*/  FUNC10 (struct merkle_tree_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int,...) ; 

int FUNC12(struct merkle_tree_params *params,
				     const struct inode *inode,
				     unsigned int hash_algorithm,
				     unsigned int log_blocksize,
				     const u8 *salt, size_t salt_size)
{
	const struct fsverity_hash_alg *hash_alg;
	int err;
	u64 blocks;
	u64 offset;
	int level;

	FUNC10(params, 0, sizeof(*params));

	hash_alg = FUNC4(inode, hash_algorithm);
	if (FUNC0(hash_alg))
		return FUNC1(hash_alg);
	params->hash_alg = hash_alg;
	params->digest_size = hash_alg->digest_size;

	params->hashstate = FUNC5(hash_alg, salt,
							salt_size);
	if (FUNC0(params->hashstate)) {
		err = FUNC1(params->hashstate);
		params->hashstate = NULL;
		FUNC3(inode, "Error %d preparing hash state", err);
		goto out_err;
	}

	if (log_blocksize != PAGE_SHIFT) {
		FUNC6(inode, "Unsupported log_blocksize: %u",
			      log_blocksize);
		err = -EINVAL;
		goto out_err;
	}
	params->log_blocksize = log_blocksize;
	params->block_size = 1 << log_blocksize;

	if (FUNC2(!FUNC8(params->digest_size))) {
		err = -EINVAL;
		goto out_err;
	}
	if (params->block_size < 2 * params->digest_size) {
		FUNC6(inode,
			      "Merkle tree block size (%u) too small for hash algorithm \"%s\"",
			      params->block_size, hash_alg->name);
		err = -EINVAL;
		goto out_err;
	}
	params->log_arity = params->log_blocksize - FUNC7(params->digest_size);
	params->hashes_per_block = 1 << params->log_arity;

	FUNC11("Merkle tree uses %s with %u-byte blocks (%u hashes/block), salt=%*phN\n",
		 hash_alg->name, params->block_size, params->hashes_per_block,
		 (int)salt_size, salt);

	/*
	 * Compute the number of levels in the Merkle tree and create a map from
	 * level to the starting block of that level.  Level 'num_levels - 1' is
	 * the root and is stored first.  Level 0 is the level directly "above"
	 * the data blocks and is stored last.
	 */

	/* Compute number of levels and the number of blocks in each level */
	blocks = (inode->i_size + params->block_size - 1) >> log_blocksize;
	FUNC11("Data is %lld bytes (%llu blocks)\n", inode->i_size, blocks);
	while (blocks > 1) {
		if (params->num_levels >= FS_VERITY_MAX_LEVELS) {
			FUNC3(inode, "Too many levels in Merkle tree");
			err = -EINVAL;
			goto out_err;
		}
		blocks = (blocks + params->hashes_per_block - 1) >>
			 params->log_arity;
		/* temporarily using level_start[] to store blocks in level */
		params->level_start[params->num_levels++] = blocks;
	}

	/* Compute the starting block of each level */
	offset = 0;
	for (level = (int)params->num_levels - 1; level >= 0; level--) {
		blocks = params->level_start[level];
		params->level_start[level] = offset;
		FUNC11("Level %d is %llu blocks starting at index %llu\n",
			 level, blocks, offset);
		offset += blocks;
	}

	params->tree_size = offset << log_blocksize;
	return 0;

out_err:
	FUNC9(params->hashstate);
	FUNC10(params, 0, sizeof(*params));
	return err;
}