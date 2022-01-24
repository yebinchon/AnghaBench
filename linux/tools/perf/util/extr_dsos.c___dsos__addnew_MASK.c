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
struct dsos {int dummy; } ;
struct dso {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dsos*,struct dso*) ; 
 struct dso* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dso*) ; 
 int /*<<< orphan*/  FUNC3 (struct dso*) ; 

struct dso *FUNC4(struct dsos *dsos, const char *name)
{
	struct dso *dso = FUNC1(name);

	if (dso != NULL) {
		FUNC0(dsos, dso);
		FUNC3(dso);
		/* Put dso here because __dsos_add already got it */
		FUNC2(dso);
	}
	return dso;
}