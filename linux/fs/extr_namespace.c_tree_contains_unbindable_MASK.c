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
struct mount {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mount*) ; 
 struct mount* FUNC1 (struct mount*,struct mount*) ; 

__attribute__((used)) static inline int FUNC2(struct mount *mnt)
{
	struct mount *p;
	for (p = mnt; p; p = FUNC1(p, mnt)) {
		if (FUNC0(p))
			return 1;
	}
	return 0;
}