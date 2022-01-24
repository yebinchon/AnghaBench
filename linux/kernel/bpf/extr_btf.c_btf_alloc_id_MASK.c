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
struct btf {int id; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INT_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  btf_idr ; 
 int /*<<< orphan*/  btf_idr_lock ; 
 int FUNC1 (int /*<<< orphan*/ *,struct btf*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct btf *btf)
{
	int id;

	FUNC2(GFP_KERNEL);
	FUNC4(&btf_idr_lock);
	id = FUNC1(&btf_idr, btf, 1, INT_MAX, GFP_ATOMIC);
	if (id > 0)
		btf->id = id;
	FUNC5(&btf_idr_lock);
	FUNC3();

	if (FUNC0(!id))
		return -ENOSPC;

	return id > 0 ? 0 : id;
}