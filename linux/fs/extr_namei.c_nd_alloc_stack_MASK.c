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
struct nameidata {scalar_t__ depth; scalar_t__ stack; scalar_t__ internal; } ;

/* Variables and functions */
 scalar_t__ EMBEDDED_LEVELS ; 
 int FUNC0 (struct nameidata*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline int FUNC2(struct nameidata *nd)
{
	if (FUNC1(nd->depth != EMBEDDED_LEVELS))
		return 0;
	if (FUNC1(nd->stack != nd->internal))
		return 0;
	return FUNC0(nd);
}