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
typedef  int u8 ;
struct ceph_pg_pool_info {int size; int min_size; int read_tier; int write_tier; void* last_force_request_resend; void* flags; void* pgp_num; void* pg_num; void* object_hash; void* crush_ruleset; void* type; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  bad ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_pg_pool_info*) ; 
 void* FUNC1 (void**) ; 
 void* FUNC2 (void**) ; 
 void* FUNC3 (void**) ; 
 int /*<<< orphan*/  FUNC4 (void**,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 

__attribute__((used)) static int FUNC6(void **p, void *end, struct ceph_pg_pool_info *pi)
{
	u8 ev, cv;
	unsigned len, num;
	void *pool_end;

	FUNC4(p, end, 2 + 4, bad);
	ev = FUNC3(p);  /* encoding version */
	cv = FUNC3(p); /* compat version */
	if (ev < 5) {
		FUNC5("got v %d < 5 cv %d of ceph_pg_pool\n", ev, cv);
		return -EINVAL;
	}
	if (cv > 9) {
		FUNC5("got v %d cv %d > 9 of ceph_pg_pool\n", ev, cv);
		return -EINVAL;
	}
	len = FUNC1(p);
	FUNC4(p, end, len, bad);
	pool_end = *p + len;

	pi->type = FUNC3(p);
	pi->size = FUNC3(p);
	pi->crush_ruleset = FUNC3(p);
	pi->object_hash = FUNC3(p);

	pi->pg_num = FUNC1(p);
	pi->pgp_num = FUNC1(p);

	*p += 4 + 4;  /* skip lpg* */
	*p += 4;      /* skip last_change */
	*p += 8 + 4;  /* skip snap_seq, snap_epoch */

	/* skip snaps */
	num = FUNC1(p);
	while (num--) {
		*p += 8;  /* snapid key */
		*p += 1 + 1; /* versions */
		len = FUNC1(p);
		*p += len;
	}

	/* skip removed_snaps */
	num = FUNC1(p);
	*p += num * (8 + 8);

	*p += 8;  /* skip auid */
	pi->flags = FUNC2(p);
	*p += 4;  /* skip crash_replay_interval */

	if (ev >= 7)
		pi->min_size = FUNC3(p);
	else
		pi->min_size = pi->size - pi->size / 2;

	if (ev >= 8)
		*p += 8 + 8;  /* skip quota_max_* */

	if (ev >= 9) {
		/* skip tiers */
		num = FUNC1(p);
		*p += num * 8;

		*p += 8;  /* skip tier_of */
		*p += 1;  /* skip cache_mode */

		pi->read_tier = FUNC2(p);
		pi->write_tier = FUNC2(p);
	} else {
		pi->read_tier = -1;
		pi->write_tier = -1;
	}

	if (ev >= 10) {
		/* skip properties */
		num = FUNC1(p);
		while (num--) {
			len = FUNC1(p);
			*p += len; /* key */
			len = FUNC1(p);
			*p += len; /* val */
		}
	}

	if (ev >= 11) {
		/* skip hit_set_params */
		*p += 1 + 1; /* versions */
		len = FUNC1(p);
		*p += len;

		*p += 4; /* skip hit_set_period */
		*p += 4; /* skip hit_set_count */
	}

	if (ev >= 12)
		*p += 4; /* skip stripe_width */

	if (ev >= 13) {
		*p += 8; /* skip target_max_bytes */
		*p += 8; /* skip target_max_objects */
		*p += 4; /* skip cache_target_dirty_ratio_micro */
		*p += 4; /* skip cache_target_full_ratio_micro */
		*p += 4; /* skip cache_min_flush_age */
		*p += 4; /* skip cache_min_evict_age */
	}

	if (ev >=  14) {
		/* skip erasure_code_profile */
		len = FUNC1(p);
		*p += len;
	}

	/*
	 * last_force_op_resend_preluminous, will be overridden if the
	 * map was encoded with RESEND_ON_SPLIT
	 */
	if (ev >= 15)
		pi->last_force_request_resend = FUNC1(p);
	else
		pi->last_force_request_resend = 0;

	if (ev >= 16)
		*p += 4; /* skip min_read_recency_for_promote */

	if (ev >= 17)
		*p += 8; /* skip expected_num_objects */

	if (ev >= 19)
		*p += 4; /* skip cache_target_dirty_high_ratio_micro */

	if (ev >= 20)
		*p += 4; /* skip min_write_recency_for_promote */

	if (ev >= 21)
		*p += 1; /* skip use_gmt_hitset */

	if (ev >= 22)
		*p += 1; /* skip fast_read */

	if (ev >= 23) {
		*p += 4; /* skip hit_set_grade_decay_rate */
		*p += 4; /* skip hit_set_search_last_n */
	}

	if (ev >= 24) {
		/* skip opts */
		*p += 1 + 1; /* versions */
		len = FUNC1(p);
		*p += len;
	}

	if (ev >= 25)
		pi->last_force_request_resend = FUNC1(p);

	/* ignore the rest */

	*p = pool_end;
	FUNC0(pi);
	return 0;

bad:
	return -EINVAL;
}