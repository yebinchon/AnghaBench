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
struct path {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,struct path*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

int
FUNC2(int dfd, const char *name, struct path *path,
			unsigned int flags)
{
	return FUNC0(dfd, FUNC1(name), path, flags);
}