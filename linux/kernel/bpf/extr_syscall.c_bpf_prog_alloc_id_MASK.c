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
struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INT_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct bpf_prog*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  prog_idr ; 
 int /*<<< orphan*/  prog_idr_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct bpf_prog *prog)
{
	int id;

	FUNC2(GFP_KERNEL);
	FUNC4(&prog_idr_lock);
	id = FUNC1(&prog_idr, prog, 1, INT_MAX, GFP_ATOMIC);
	if (id > 0)
		prog->aux->id = id;
	FUNC5(&prog_idr_lock);
	FUNC3();

	/* id is in [1, INT_MAX) */
	if (FUNC0(!id))
		return -ENOSPC;

	return id > 0 ? 0 : id;
}