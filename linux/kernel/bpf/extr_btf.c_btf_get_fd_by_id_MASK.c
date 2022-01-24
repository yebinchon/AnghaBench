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
struct btf {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct btf* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct btf*) ; 
 int FUNC2 (struct btf*) ; 
 int FUNC3 (struct btf*) ; 
 int /*<<< orphan*/  btf_idr ; 
 int /*<<< orphan*/  FUNC4 (struct btf*) ; 
 struct btf* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(u32 id)
{
	struct btf *btf;
	int fd;

	FUNC6();
	btf = FUNC5(&btf_idr, id);
	if (!btf || !FUNC8(&btf->refcnt))
		btf = FUNC0(-ENOENT);
	FUNC7();

	if (FUNC1(btf))
		return FUNC2(btf);

	fd = FUNC3(btf);
	if (fd < 0)
		FUNC4(btf);

	return fd;
}