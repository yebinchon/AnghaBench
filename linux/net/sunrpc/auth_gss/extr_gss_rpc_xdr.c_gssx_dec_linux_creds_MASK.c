#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct xdr_stream {int dummy; } ;
struct svc_cred {TYPE_1__* cr_group_info; void* cr_gid; int /*<<< orphan*/  cr_uid; } ;
typedef  void* kgid_t ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {void** gid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int NGROUPS_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xdr_stream*,int*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  init_user_ns ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC10(struct xdr_stream *xdr,
				struct svc_cred *creds)
{
	u32 length;
	__be32 *p;
	u32 tmp;
	u32 N;
	int i, err;

	p = FUNC9(xdr, 4);
	if (FUNC8(p == NULL))
		return -ENOSPC;

	length = FUNC0(p);

	if (length > (3 + NGROUPS_MAX) * sizeof(u32))
		return -ENOSPC;

	/* uid */
	err = FUNC1(xdr, &tmp);
	if (err)
		return err;
	creds->cr_uid = FUNC7(&init_user_ns, tmp);

	/* gid */
	err = FUNC1(xdr, &tmp);
	if (err)
		return err;
	creds->cr_gid = FUNC6(&init_user_ns, tmp);

	/* number of additional gid's */
	err = FUNC1(xdr, &tmp);
	if (err)
		return err;
	N = tmp;
	if ((3 + N) * sizeof(u32) != length)
		return -EINVAL;
	creds->cr_group_info = FUNC3(N);
	if (creds->cr_group_info == NULL)
		return -ENOMEM;

	/* gid's */
	for (i = 0; i < N; i++) {
		kgid_t kgid;
		err = FUNC1(xdr, &tmp);
		if (err)
			goto out_free_groups;
		err = -EINVAL;
		kgid = FUNC6(&init_user_ns, tmp);
		if (!FUNC2(kgid))
			goto out_free_groups;
		creds->cr_group_info->gid[i] = kgid;
	}
	FUNC5(creds->cr_group_info);

	return 0;
out_free_groups:
	FUNC4(creds->cr_group_info);
	return err;
}