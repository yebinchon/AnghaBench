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
struct nf_ct_ext_type {size_t id; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_ct_ext_type_mutex ; 
 scalar_t__* nf_ct_ext_types ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct nf_ct_ext_type const*) ; 

int FUNC3(const struct nf_ct_ext_type *type)
{
	int ret = 0;

	FUNC0(&nf_ct_ext_type_mutex);
	if (nf_ct_ext_types[type->id]) {
		ret = -EBUSY;
		goto out;
	}

	FUNC2(nf_ct_ext_types[type->id], type);
out:
	FUNC1(&nf_ct_ext_type_mutex);
	return ret;
}