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
struct mutex {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC0 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC1 (struct mutex*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*,struct mutex*) ; 

__attribute__((used)) static void FUNC3(struct mutex *a, struct mutex *b)
{
	if (b < a)
		FUNC2(a, b);

	FUNC0(a);
	FUNC1(b, SINGLE_DEPTH_NESTING);
}