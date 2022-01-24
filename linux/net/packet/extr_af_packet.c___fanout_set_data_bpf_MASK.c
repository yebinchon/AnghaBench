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
struct packet_fanout {int /*<<< orphan*/  lock; int /*<<< orphan*/  bpf_prog; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bpf_prog*) ; 
 struct bpf_prog* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct packet_fanout *f, struct bpf_prog *new)
{
	struct bpf_prog *old;

	FUNC4(&f->lock);
	old = FUNC3(f->bpf_prog, FUNC1(&f->lock));
	FUNC2(f->bpf_prog, new);
	FUNC5(&f->lock);

	if (old) {
		FUNC6();
		FUNC0(old);
	}
}