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
struct f2fs_checkpoint {int /*<<< orphan*/  ckpt_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct f2fs_checkpoint *cp, unsigned int f)
{
	unsigned int ckpt_flags;

	ckpt_flags = FUNC1(cp->ckpt_flags);
	ckpt_flags |= f;
	cp->ckpt_flags = FUNC0(ckpt_flags);
}