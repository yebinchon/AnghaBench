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
struct gfs2_glock {int dummy; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_glock*) ; 

__attribute__((used)) static void FUNC2(void *foo)
{
	struct gfs2_glock *gl = foo;
	struct address_space *mapping = (struct address_space *)(gl + 1);

	FUNC1(gl);
	FUNC0(mapping);
}