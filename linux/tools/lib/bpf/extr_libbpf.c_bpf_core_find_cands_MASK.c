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
struct ids_vec {int* data; scalar_t__ len; } ;
struct btf_type {int /*<<< orphan*/  name_off; } ;
struct btf {int dummy; } ;
typedef  int __u32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct ids_vec* FUNC0 (int) ; 
 size_t FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ids_vec*) ; 
 int FUNC3 (struct btf const*) ; 
 char* FUNC4 (struct btf const*,int /*<<< orphan*/ ) ; 
 struct btf_type* FUNC5 (struct btf const*,int) ; 
 struct ids_vec* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char const*,int,char const*) ; 
 int* FUNC8 (int*,scalar_t__) ; 
 scalar_t__ FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*,char const*,size_t) ; 

__attribute__((used)) static struct ids_vec *FUNC11(const struct btf *local_btf,
					   __u32 local_type_id,
					   const struct btf *targ_btf)
{
	size_t local_essent_len, targ_essent_len;
	const char *local_name, *targ_name;
	const struct btf_type *t;
	struct ids_vec *cand_ids;
	__u32 *new_ids;
	int i, err, n;

	t = FUNC5(local_btf, local_type_id);
	if (!t)
		return FUNC0(-EINVAL);

	local_name = FUNC4(local_btf, t->name_off);
	if (FUNC9(local_name))
		return FUNC0(-EINVAL);
	local_essent_len = FUNC1(local_name);

	cand_ids = FUNC6(1, sizeof(*cand_ids));
	if (!cand_ids)
		return FUNC0(-ENOMEM);

	n = FUNC3(targ_btf);
	for (i = 1; i <= n; i++) {
		t = FUNC5(targ_btf, i);
		targ_name = FUNC4(targ_btf, t->name_off);
		if (FUNC9(targ_name))
			continue;

		targ_essent_len = FUNC1(targ_name);
		if (targ_essent_len != local_essent_len)
			continue;

		if (FUNC10(local_name, targ_name, local_essent_len) == 0) {
			FUNC7("[%d] %s: found candidate [%d] %s\n",
				 local_type_id, local_name, i, targ_name);
			new_ids = FUNC8(cand_ids->data, cand_ids->len + 1);
			if (!new_ids) {
				err = -ENOMEM;
				goto err_out;
			}
			cand_ids->data = new_ids;
			cand_ids->data[cand_ids->len++] = i;
		}
	}
	return cand_ids;
err_out:
	FUNC2(cand_ids);
	return FUNC0(err);
}