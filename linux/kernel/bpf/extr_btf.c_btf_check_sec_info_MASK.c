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
typedef  size_t u32 ;
struct btf_verifier_env {struct btf* btf; } ;
struct btf_sec_info {size_t off; size_t len; } ;
struct btf_header {size_t hdr_len; } ;
struct btf {struct btf_header hdr; } ;

/* Variables and functions */
 size_t FUNC0 (int*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  btf_sec_info_cmp ; 
 int* btf_sec_info_offset ; 
 int /*<<< orphan*/  FUNC1 (struct btf_verifier_env*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct btf_sec_info*,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct btf_verifier_env *env,
			      u32 btf_data_size)
{
	struct btf_sec_info secs[FUNC0(btf_sec_info_offset)];
	u32 total, expected_total, i;
	const struct btf_header *hdr;
	const struct btf *btf;

	btf = env->btf;
	hdr = &btf->hdr;

	/* Populate the secs from hdr */
	for (i = 0; i < FUNC0(btf_sec_info_offset); i++)
		secs[i] = *(struct btf_sec_info *)((void *)hdr +
						   btf_sec_info_offset[i]);

	FUNC2(secs, FUNC0(btf_sec_info_offset),
	     sizeof(struct btf_sec_info), btf_sec_info_cmp, NULL);

	/* Check for gaps and overlap among sections */
	total = 0;
	expected_total = btf_data_size - hdr->hdr_len;
	for (i = 0; i < FUNC0(btf_sec_info_offset); i++) {
		if (expected_total < secs[i].off) {
			FUNC1(env, "Invalid section offset");
			return -EINVAL;
		}
		if (total < secs[i].off) {
			/* gap */
			FUNC1(env, "Unsupported section found");
			return -EINVAL;
		}
		if (total > secs[i].off) {
			FUNC1(env, "Section overlap found");
			return -EINVAL;
		}
		if (expected_total - total < secs[i].len) {
			FUNC1(env,
					 "Total section length too long");
			return -EINVAL;
		}
		total += secs[i].len;
	}

	/* There is data other than hdr and known sections */
	if (expected_total != total) {
		FUNC1(env, "Unsupported section found");
		return -EINVAL;
	}

	return 0;
}