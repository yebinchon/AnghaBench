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
struct wdrr_bucket {int /*<<< orphan*/  bucketchain; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct list_head {int dummy; } ;
struct hhf_sched_data {int hhf_reset_timeout; int hhf_admit_bytes; int hhf_evict_timeout; int hhf_non_hh_weight; int hh_flows_limit; struct wdrr_bucket* buckets; int /*<<< orphan*/ * hhf_valid_bits; int /*<<< orphan*/  hhf_arrays_reset_timestamp; void** hhf_arrays; scalar_t__ hh_flows_current_cnt; scalar_t__ hh_flows_total_cnt; scalar_t__ hh_flows_overlimit; int /*<<< orphan*/ * hh_flows; int /*<<< orphan*/  old_buckets; int /*<<< orphan*/  new_buckets; int /*<<< orphan*/  perturbation; int /*<<< orphan*/  quantum; } ;
struct Qdisc {int limit; } ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HHF_ARRAYS_CNT ; 
 int HHF_ARRAYS_LEN ; 
 int HH_FLOWS_CNT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int WDRR_BUCKET_CNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*) ; 
 struct hhf_sched_data* FUNC8 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC9(struct Qdisc *sch, struct nlattr *opt,
		    struct netlink_ext_ack *extack)
{
	struct hhf_sched_data *q = FUNC8(sch);
	int i;

	sch->limit = 1000;
	q->quantum = FUNC6(FUNC7(sch));
	FUNC1(&q->perturbation, sizeof(q->perturbation));
	FUNC0(&q->new_buckets);
	FUNC0(&q->old_buckets);

	/* Configurable HHF parameters */
	q->hhf_reset_timeout = HZ / 25; /* 40  ms */
	q->hhf_admit_bytes = 131072;    /* 128 KB */
	q->hhf_evict_timeout = HZ;      /* 1  sec */
	q->hhf_non_hh_weight = 2;

	if (opt) {
		int err = FUNC2(sch, opt, extack);

		if (err)
			return err;
	}

	if (!q->hh_flows) {
		/* Initialize heavy-hitter flow table. */
		q->hh_flows = FUNC4(HH_FLOWS_CNT, sizeof(struct list_head),
				       GFP_KERNEL);
		if (!q->hh_flows)
			return -ENOMEM;
		for (i = 0; i < HH_FLOWS_CNT; i++)
			FUNC0(&q->hh_flows[i]);

		/* Cap max active HHs at twice len of hh_flows table. */
		q->hh_flows_limit = 2 * HH_FLOWS_CNT;
		q->hh_flows_overlimit = 0;
		q->hh_flows_total_cnt = 0;
		q->hh_flows_current_cnt = 0;

		/* Initialize heavy-hitter filter arrays. */
		for (i = 0; i < HHF_ARRAYS_CNT; i++) {
			q->hhf_arrays[i] = FUNC4(HHF_ARRAYS_LEN,
						    sizeof(u32),
						    GFP_KERNEL);
			if (!q->hhf_arrays[i]) {
				/* Note: hhf_destroy() will be called
				 * by our caller.
				 */
				return -ENOMEM;
			}
		}
		q->hhf_arrays_reset_timestamp = FUNC3();

		/* Initialize valid bits of heavy-hitter filter arrays. */
		for (i = 0; i < HHF_ARRAYS_CNT; i++) {
			q->hhf_valid_bits[i] = FUNC5(HHF_ARRAYS_LEN /
							  BITS_PER_BYTE, GFP_KERNEL);
			if (!q->hhf_valid_bits[i]) {
				/* Note: hhf_destroy() will be called
				 * by our caller.
				 */
				return -ENOMEM;
			}
		}

		/* Initialize Weighted DRR buckets. */
		for (i = 0; i < WDRR_BUCKET_CNT; i++) {
			struct wdrr_bucket *bucket = q->buckets + i;

			FUNC0(&bucket->bucketchain);
		}
	}

	return 0;
}