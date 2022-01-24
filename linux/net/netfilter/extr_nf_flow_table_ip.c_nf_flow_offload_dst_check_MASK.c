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
struct dst_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dst_entry *dst)
{
	if (FUNC2(FUNC1(dst)))
		return FUNC0(dst, 0) ? 0 : -1;

	return 0;
}