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
struct nfsd4_copy {int /*<<< orphan*/  copy_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfsd4_copy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsd4_copy*) ; 

__attribute__((used)) static void FUNC3(struct nfsd4_copy *copy)
{
	/* only 1 thread should stop the copy */
	if (!FUNC0(copy))
		FUNC1(copy->copy_task);
	FUNC2(copy);
}