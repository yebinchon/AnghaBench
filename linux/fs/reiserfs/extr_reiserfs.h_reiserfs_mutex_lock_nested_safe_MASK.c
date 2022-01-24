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
struct super_block {int dummy; } ;
struct mutex {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mutex*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int) ; 
 int FUNC2 (struct super_block*) ; 

__attribute__((used)) static inline void
FUNC3(struct mutex *m, unsigned int subclass,
				struct super_block *s)
{
	int depth;

	depth = FUNC2(s);
	FUNC0(m, subclass);
	FUNC1(s, depth);
}