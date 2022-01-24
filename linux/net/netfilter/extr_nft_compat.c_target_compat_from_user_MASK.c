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
struct xt_target {int targetsize; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct xt_target *t, void *in, void *out)
{
	int pad;

	FUNC1(out, in, t->targetsize);
	pad = FUNC0(t->targetsize) - t->targetsize;
	if (pad > 0)
		FUNC2(out + t->targetsize, 0, pad);
}