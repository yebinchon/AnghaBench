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
struct bpf_prog_aux {int /*<<< orphan*/  ksym_lnode; struct bpf_prog* prog; } ;
struct bpf_prog {unsigned int pages; struct bpf_prog_aux* aux; int /*<<< orphan*/  jit_requested; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 unsigned int PAGE_SIZE ; 
 int __GFP_ZERO ; 
 struct bpf_prog* FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct bpf_prog_aux* FUNC3 (int,int) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_prog*) ; 

struct bpf_prog *FUNC6(unsigned int size, gfp_t gfp_extra_flags)
{
	gfp_t gfp_flags = GFP_KERNEL | __GFP_ZERO | gfp_extra_flags;
	struct bpf_prog_aux *aux;
	struct bpf_prog *fp;

	size = FUNC4(size, PAGE_SIZE);
	fp = FUNC1(size, gfp_flags, PAGE_KERNEL);
	if (fp == NULL)
		return NULL;

	aux = FUNC3(sizeof(*aux), GFP_KERNEL | gfp_extra_flags);
	if (aux == NULL) {
		FUNC5(fp);
		return NULL;
	}

	fp->pages = size / PAGE_SIZE;
	fp->aux = aux;
	fp->aux->prog = fp;
	fp->jit_requested = FUNC2();

	FUNC0(&fp->aux->ksym_lnode);

	return fp;
}