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

/* Variables and functions */
 int latest_maj ; 
 int latest_min ; 
 int latest_rev ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	/* Unicode 7.0.0 should be supported. */
	FUNC0(FUNC1(7, 0, 0));

	/* Unicode 9.0.0 should be supported. */
	FUNC0(FUNC1(9, 0, 0));

	/* Unicode 1x.0.0 (the latest version) should be supported. */
	FUNC0(FUNC1(latest_maj, latest_min, latest_rev));

	/* Next versions don't exist. */
	FUNC0(!FUNC1(13, 0, 0));
	FUNC0(!FUNC1(0, 0, 0));
	FUNC0(!FUNC1(-1, -1, -1));
}