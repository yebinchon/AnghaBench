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
struct metapath {int* mp_list; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned int,struct metapath const*) ; 

__attribute__((used)) static inline __be64 *FUNC1(unsigned int height, const struct metapath *mp)
{
	__be64 *p = FUNC0(height, mp);
	return p + mp->mp_list[height];
}