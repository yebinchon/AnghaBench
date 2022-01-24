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
struct regex {int /*<<< orphan*/  pattern; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(char *str, struct regex *r, int len)
{
	if (!len)
		return FUNC1(str, r->pattern) != NULL;

	return FUNC0(str, r->pattern, len) != NULL;
}