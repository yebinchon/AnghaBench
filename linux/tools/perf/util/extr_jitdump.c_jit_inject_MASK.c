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
struct jit_buf_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct jit_buf_desc*) ; 
 int FUNC2 (struct jit_buf_desc*,char*) ; 
 int FUNC3 (struct jit_buf_desc*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int
FUNC4(struct jit_buf_desc *jd, char *path)
{
	int ret;

	if (verbose > 0)
		FUNC0(stderr, "injecting: %s\n", path);

	ret = FUNC2(jd, path);
	if (ret)
		return -1;

	ret = FUNC3(jd);

	FUNC1(jd);

	if (verbose > 0)
		FUNC0(stderr, "injected: %s (%d)\n", path, ret);

	return 0;
}