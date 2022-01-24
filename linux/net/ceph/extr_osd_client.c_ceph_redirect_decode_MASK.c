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
typedef  int u32 ;
struct ceph_request_redirect {int /*<<< orphan*/  oloc; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (void**) ; 
 int FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (void**,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  e_inval ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(void **p, void *end,
				struct ceph_request_redirect *redir)
{
	u8 struct_v, struct_cv;
	u32 len;
	void *struct_end;
	int ret;

	FUNC2(p, end, 1 + 1 + 4, e_inval);
	struct_v = FUNC1(p);
	struct_cv = FUNC1(p);
	if (struct_cv > 1) {
		FUNC4("got v %d cv %d > 1 of ceph_request_redirect\n",
			struct_v, struct_cv);
		goto e_inval;
	}
	len = FUNC0(p);
	FUNC2(p, end, len, e_inval);
	struct_end = *p + len;

	ret = FUNC3(p, end, &redir->oloc);
	if (ret)
		goto out;

	len = FUNC0(p);
	if (len > 0) {
		FUNC4("ceph_request_redirect::object_name is set\n");
		goto e_inval;
	}

	len = FUNC0(p);
	*p += len; /* skip osd_instructions */

	/* skip the rest */
	*p = struct_end;
out:
	return ret;

e_inval:
	ret = -EINVAL;
	goto out;
}