#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct proto {int slab_flags; int /*<<< orphan*/ * slab; int /*<<< orphan*/  rsk_prot; TYPE_1__* twsk_prot; int /*<<< orphan*/  node; int /*<<< orphan*/  name; int /*<<< orphan*/  usersize; int /*<<< orphan*/  useroffset; int /*<<< orphan*/  obj_size; } ;
struct TYPE_2__ {int /*<<< orphan*/ * twsk_slab_name; int /*<<< orphan*/ * twsk_slab; int /*<<< orphan*/  twsk_obj_size; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SLAB_ACCOUNT ; 
 int SLAB_HWCACHE_ALIGN ; 
 int FUNC0 (struct proto*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proto_list ; 
 int /*<<< orphan*/  proto_list_mutex ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct proto*) ; 

int FUNC12(struct proto *prot, int alloc_slab)
{
	int ret = -ENOBUFS;

	if (alloc_slab) {
		prot->slab = FUNC4(prot->name,
					prot->obj_size, 0,
					SLAB_HWCACHE_ALIGN | SLAB_ACCOUNT |
					prot->slab_flags,
					prot->useroffset, prot->usersize,
					NULL);

		if (prot->slab == NULL) {
			FUNC9("%s: Can't create sock SLAB cache!\n",
				prot->name);
			goto out;
		}

		if (FUNC11(prot))
			goto out_free_request_sock_slab;

		if (prot->twsk_prot != NULL) {
			prot->twsk_prot->twsk_slab_name = FUNC1(GFP_KERNEL, "tw_sock_%s", prot->name);

			if (prot->twsk_prot->twsk_slab_name == NULL)
				goto out_free_request_sock_slab;

			prot->twsk_prot->twsk_slab =
				FUNC3(prot->twsk_prot->twsk_slab_name,
						  prot->twsk_prot->twsk_obj_size,
						  0,
						  SLAB_ACCOUNT |
						  prot->slab_flags,
						  NULL);
			if (prot->twsk_prot->twsk_slab == NULL)
				goto out_free_timewait_sock_slab_name;
		}
	}

	FUNC7(&proto_list_mutex);
	ret = FUNC0(prot);
	if (ret) {
		FUNC8(&proto_list_mutex);
		goto out_free_timewait_sock_slab_name;
	}
	FUNC6(&prot->node, &proto_list);
	FUNC8(&proto_list_mutex);
	return ret;

out_free_timewait_sock_slab_name:
	if (alloc_slab && prot->twsk_prot)
		FUNC2(prot->twsk_prot->twsk_slab_name);
out_free_request_sock_slab:
	if (alloc_slab) {
		FUNC10(prot->rsk_prot);

		FUNC5(prot->slab);
		prot->slab = NULL;
	}
out:
	return ret;
}