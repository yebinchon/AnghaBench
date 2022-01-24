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
 int /*<<< orphan*/  FUNC0 (struct dsos*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dso* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct dso *FUNC4(struct dsos *dsos, const char *name)
{
	struct dso *dso;
	FUNC1(&dsos->lock);
	dso = FUNC2(FUNC0(dsos, name));
	FUNC3(&dsos->lock);
	return dso;
}