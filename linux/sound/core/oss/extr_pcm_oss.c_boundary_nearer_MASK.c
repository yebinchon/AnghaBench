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
 int FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int*,int*) ; 

__attribute__((used)) static int FUNC2(int min, int mindir,
			   int best, int bestdir,
			   int max, int maxdir)
{
	int dmin, dmindir;
	int dmax, dmaxdir;
	FUNC1(best, bestdir, min, mindir, &dmin, &dmindir);
	FUNC1(max, maxdir, best, bestdir, &dmax, &dmaxdir);
	return FUNC0(dmin, dmindir, dmax, dmaxdir);
}