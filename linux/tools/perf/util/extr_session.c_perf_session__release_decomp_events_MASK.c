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
struct perf_session {struct decomp* decomp; } ;
struct decomp {size_t mmap_len; struct decomp* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct decomp*,size_t) ; 

__attribute__((used)) static void FUNC1(struct perf_session *session)
{
	struct decomp *next, *decomp;
	size_t mmap_len;
	next = session->decomp;
	do {
		decomp = next;
		if (decomp == NULL)
			break;
		next = decomp->next;
		mmap_len = decomp->mmap_len;
		FUNC0(decomp, mmap_len);
	} while (1);
}