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
struct nfsd4_compoundargs {int pagelen; scalar_t__ p; scalar_t__ end; int /*<<< orphan*/ * pagelist; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct nfsd4_compoundargs *argp)
{
	argp->p = FUNC1(argp->pagelist[0]);
	argp->pagelist++;
	if (argp->pagelen < PAGE_SIZE) {
		argp->end = argp->p + FUNC0(argp->pagelen);
		argp->pagelen = 0;
	} else {
		argp->end = argp->p + (PAGE_SIZE>>2);
		argp->pagelen -= PAGE_SIZE;
	}
}