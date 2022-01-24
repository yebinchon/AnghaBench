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
struct super_block {int dummy; } ;
struct ocfs2_super {void* local_alloc_default_bits; void* local_alloc_bits; struct super_block* sb; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct super_block*,int) ; 
 unsigned int FUNC1 (struct ocfs2_super*) ; 
 int FUNC2 (struct super_block*) ; 
 void* FUNC3 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int,unsigned int) ; 

void FUNC5(struct ocfs2_super *osb, int requested_mb)
{
	struct super_block *sb = osb->sb;
	unsigned int la_default_mb = FUNC1(osb);
	unsigned int la_max_mb;

	la_max_mb = FUNC0(sb,
						FUNC2(sb) * 8);

	FUNC4(requested_mb, la_max_mb, la_default_mb);

	if (requested_mb == -1) {
		/* No user request - use defaults */
		osb->local_alloc_default_bits =
			FUNC3(sb, la_default_mb);
	} else if (requested_mb > la_max_mb) {
		/* Request is too big, we give the maximum available */
		osb->local_alloc_default_bits =
			FUNC3(sb, la_max_mb);
	} else {
		osb->local_alloc_default_bits =
			FUNC3(sb, requested_mb);
	}

	osb->local_alloc_bits = osb->local_alloc_default_bits;
}