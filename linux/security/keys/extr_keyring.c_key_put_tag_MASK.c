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
struct key_tag {int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct key_tag*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

bool FUNC2(struct key_tag *tag)
{
	if (FUNC1(&tag->usage)) {
		FUNC0(tag, rcu);
		return true;
	}

	return false;
}