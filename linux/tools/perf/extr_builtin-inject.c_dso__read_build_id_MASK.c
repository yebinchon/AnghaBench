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
struct dso {int has_build_id; int /*<<< orphan*/  build_id; int /*<<< orphan*/  long_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct dso *dso)
{
	if (dso->has_build_id)
		return 0;

	if (FUNC0(dso->long_name, dso->build_id,
				    sizeof(dso->build_id)) > 0) {
		dso->has_build_id = true;
		return 0;
	}

	return -1;
}