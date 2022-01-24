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
struct percpu_counter {int dummy; } ;
struct ext4_sb_info {int s_cluster_bits; int /*<<< orphan*/  s_resgid; int /*<<< orphan*/  s_resuid; int /*<<< orphan*/  s_es; int /*<<< orphan*/  s_resv_clusters; struct percpu_counter s_dirtyclusters_counter; struct percpu_counter s_freeclusters_counter; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_RESOURCE ; 
 scalar_t__ EXT4_FREECLUSTERS_WATERMARK ; 
 unsigned int EXT4_MB_USE_RESERVED ; 
 unsigned int EXT4_MB_USE_ROOT_BLOCKS ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct percpu_counter*) ; 
 scalar_t__ FUNC7 (struct percpu_counter*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ext4_sb_info *sbi,
				  s64 nclusters, unsigned int flags)
{
	s64 free_clusters, dirty_clusters, rsv, resv_clusters;
	struct percpu_counter *fcc = &sbi->s_freeclusters_counter;
	struct percpu_counter *dcc = &sbi->s_dirtyclusters_counter;

	free_clusters  = FUNC6(fcc);
	dirty_clusters = FUNC6(dcc);
	resv_clusters = FUNC0(&sbi->s_resv_clusters);

	/*
	 * r_blocks_count should always be multiple of the cluster ratio so
	 * we are safe to do a plane bit shift only.
	 */
	rsv = (FUNC3(sbi->s_es) >> sbi->s_cluster_bits) +
	      resv_clusters;

	if (free_clusters - (nclusters + rsv + dirty_clusters) <
					EXT4_FREECLUSTERS_WATERMARK) {
		free_clusters  = FUNC7(fcc);
		dirty_clusters = FUNC7(dcc);
	}
	/* Check whether we have space after accounting for current
	 * dirty clusters & root reserved clusters.
	 */
	if (free_clusters >= (rsv + nclusters + dirty_clusters))
		return 1;

	/* Hm, nope.  Are (enough) root reserved clusters available? */
	if (FUNC8(sbi->s_resuid, FUNC2()) ||
	    (!FUNC4(sbi->s_resgid, GLOBAL_ROOT_GID) && FUNC5(sbi->s_resgid)) ||
	    FUNC1(CAP_SYS_RESOURCE) ||
	    (flags & EXT4_MB_USE_ROOT_BLOCKS)) {

		if (free_clusters >= (nclusters + dirty_clusters +
				      resv_clusters))
			return 1;
	}
	/* No free blocks. Let's see if we can dip into reserved pool */
	if (flags & EXT4_MB_USE_RESERVED) {
		if (free_clusters >= (nclusters + dirty_clusters))
			return 1;
	}

	return 0;
}