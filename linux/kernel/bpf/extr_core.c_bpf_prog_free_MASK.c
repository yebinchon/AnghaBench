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
struct bpf_prog_aux {int /*<<< orphan*/  work; } ;
struct bpf_prog {struct bpf_prog_aux* aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bpf_prog_free_deferred ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct bpf_prog *fp)
{
	struct bpf_prog_aux *aux = fp->aux;

	FUNC0(&aux->work, bpf_prog_free_deferred);
	FUNC1(&aux->work);
}