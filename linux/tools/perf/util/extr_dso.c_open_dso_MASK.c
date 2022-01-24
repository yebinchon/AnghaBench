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
struct nscookie {int dummy; } ;
struct machine {int dummy; } ;
struct dso {scalar_t__ binary_type; int /*<<< orphan*/  nsinfo; } ;

/* Variables and functions */
 scalar_t__ DSO_BINARY_TYPE__BUILD_ID_CACHE ; 
 int FUNC0 (struct dso*,struct machine*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct dso*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nscookie*) ; 
 int /*<<< orphan*/  FUNC4 (struct nscookie*) ; 

__attribute__((used)) static int FUNC5(struct dso *dso, struct machine *machine)
{
	int fd;
	struct nscookie nsc;

	if (dso->binary_type != DSO_BINARY_TYPE__BUILD_ID_CACHE)
		FUNC3(dso->nsinfo, &nsc);
	fd = FUNC0(dso, machine);
	if (dso->binary_type != DSO_BINARY_TYPE__BUILD_ID_CACHE)
		FUNC4(&nsc);

	if (fd >= 0) {
		FUNC2(dso);
		/*
		 * Check if we crossed the allowed number
		 * of opened DSOs and close one if needed.
		 */
		FUNC1();
	}

	return fd;
}