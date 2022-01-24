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
struct fdarray {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (struct fdarray*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC2(struct fdarray *fda, const char *prefix, FILE *fp)
{
	int printed = 0;

	if (verbose <= 0)
		return 0;

	printed += FUNC1(fp, "\n%s: ", prefix);
	return printed + FUNC0(fda, fp);
}