#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int ENOENT ; 
 int EPROTONOSUPPORT ; 
 int FUNC0 (size_t,char const*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (size_t,char const*,size_t,int*) ; 
 TYPE_1__* xt ; 

int FUNC4(u8 af, const char *name, u8 revision, int target,
		     int *err)
{
	int have_rev, best = -1;

	FUNC1(&xt[af].mutex);
	if (target == 1)
		have_rev = FUNC3(af, name, revision, &best);
	else
		have_rev = FUNC0(af, name, revision, &best);
	FUNC2(&xt[af].mutex);

	/* Nothing at all?  Return 0 to try loading module. */
	if (best == -1) {
		*err = -ENOENT;
		return 0;
	}

	*err = best;
	if (!have_rev)
		*err = -EPROTONOSUPPORT;
	return 1;
}