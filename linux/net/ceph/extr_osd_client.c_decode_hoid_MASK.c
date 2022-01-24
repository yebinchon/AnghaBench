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
typedef  int /*<<< orphan*/  u32 ;
struct ceph_hobject_id {int /*<<< orphan*/  pool; int /*<<< orphan*/ * nspace; int /*<<< orphan*/  nspace_len; int /*<<< orphan*/  is_max; int /*<<< orphan*/  hash; int /*<<< orphan*/  snapid; int /*<<< orphan*/ * oid; int /*<<< orphan*/  oid_len; int /*<<< orphan*/ * key; int /*<<< orphan*/  key_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (void**,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_hobject_id*) ; 
 int FUNC7 (void**,void*,int,char*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  e_inval ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

__attribute__((used)) static int FUNC9(void **p, void *end, struct ceph_hobject_id *hoid)
{
	u8 struct_v;
	u32 struct_len;
	int ret;

	ret = FUNC7(p, end, 4, "hobject_t", &struct_v,
				  &struct_len);
	if (ret)
		return ret;

	if (struct_v < 4) {
		FUNC8("got struct_v %d < 4 of hobject_t\n", struct_v);
		goto e_inval;
	}

	hoid->key = FUNC5(p, end, &hoid->key_len,
						GFP_NOIO);
	if (FUNC0(hoid->key)) {
		ret = FUNC1(hoid->key);
		hoid->key = NULL;
		return ret;
	}

	hoid->oid = FUNC5(p, end, &hoid->oid_len,
						GFP_NOIO);
	if (FUNC0(hoid->oid)) {
		ret = FUNC1(hoid->oid);
		hoid->oid = NULL;
		return ret;
	}

	FUNC3(p, end, hoid->snapid, e_inval);
	FUNC2(p, end, hoid->hash, e_inval);
	FUNC4(p, end, hoid->is_max, e_inval);

	hoid->nspace = FUNC5(p, end, &hoid->nspace_len,
						   GFP_NOIO);
	if (FUNC0(hoid->nspace)) {
		ret = FUNC1(hoid->nspace);
		hoid->nspace = NULL;
		return ret;
	}

	FUNC3(p, end, hoid->pool, e_inval);

	FUNC6(hoid);
	return 0;

e_inval:
	return -EINVAL;
}