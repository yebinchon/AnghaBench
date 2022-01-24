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
struct kcore_extract {int /*<<< orphan*/  extract_filename; int /*<<< orphan*/  len; int /*<<< orphan*/  offs; int /*<<< orphan*/  addr; int /*<<< orphan*/  kcore_filename; } ;
struct kcore {int /*<<< orphan*/  fd; int /*<<< orphan*/  elfclass; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_KCORE_EXTRACT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kcore*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kcore*) ; 
 scalar_t__ FUNC3 (struct kcore*,struct kcore*,size_t) ; 
 scalar_t__ FUNC4 (struct kcore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct kcore*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct kcore*) ; 
 scalar_t__ page_size ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct kcore_extract *kce)
{
	struct kcore kcore;
	struct kcore extract;
	size_t count = 1;
	int idx = 0, err = -1;
	off_t offset = page_size, sz;

	if (FUNC5(&kcore, kce->kcore_filename))
		return -1;

	FUNC7(kce->extract_filename, PERF_KCORE_EXTRACT);
	if (FUNC4(&extract, kce->extract_filename, kcore.elfclass, true))
		goto out_kcore_close;

	if (FUNC3(&kcore, &extract, count))
		goto out_extract_close;

	if (FUNC1(&extract, idx, offset, kce->addr, kce->len))
		goto out_extract_close;

	sz = FUNC6(&extract);
	if (sz < 0 || sz > offset)
		goto out_extract_close;

	if (FUNC0(kcore.fd, kce->offs, extract.fd, offset, kce->len))
		goto out_extract_close;

	err = 0;

out_extract_close:
	FUNC2(&extract);
	if (err)
		FUNC8(kce->extract_filename);
out_kcore_close:
	FUNC2(&kcore);

	return err;
}