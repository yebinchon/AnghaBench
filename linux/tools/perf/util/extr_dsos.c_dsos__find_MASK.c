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
struct dsos {int /*<<< orphan*/  lock; } ;
struct dso {int dummy; } ;

/* Variables and functions */
 struct dso* FUNC0 (struct dsos*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct dso *FUNC3(struct dsos *dsos, const char *name, bool cmp_short)
{
	struct dso *dso;
	FUNC1(&dsos->lock);
	dso = FUNC0(dsos, name, cmp_short);
	FUNC2(&dsos->lock);
	return dso;
}