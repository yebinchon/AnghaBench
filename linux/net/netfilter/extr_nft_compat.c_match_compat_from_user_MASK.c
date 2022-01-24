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
struct xt_match {int matchsize; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct xt_match *m, void *in, void *out)
{
	int pad;

	FUNC1(out, in, m->matchsize);
	pad = FUNC0(m->matchsize) - m->matchsize;
	if (pad > 0)
		FUNC2(out + m->matchsize, 0, pad);
}