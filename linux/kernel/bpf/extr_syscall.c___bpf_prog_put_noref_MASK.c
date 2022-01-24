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
struct TYPE_2__ {int /*<<< orphan*/  rcu; int /*<<< orphan*/  btf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 

__attribute__((used)) static void FUNC5(struct bpf_prog *prog, bool deferred)
{
	FUNC2(prog);
	FUNC3(prog->aux->btf);
	FUNC1(prog);

	if (deferred)
		FUNC4(&prog->aux->rcu, __bpf_prog_put_rcu);
	else
		FUNC0(&prog->aux->rcu);
}