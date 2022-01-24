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
struct kmemleak_object {int flags; scalar_t__ jiffies; } ;

/* Variables and functions */
 int OBJECT_ALLOCATED ; 
 scalar_t__ FUNC0 (struct kmemleak_object*) ; 
 int /*<<< orphan*/  jiffies_last_scan ; 
 scalar_t__ jiffies_min_age ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct kmemleak_object *object)
{
	return (FUNC0(object) && object->flags & OBJECT_ALLOCATED) &&
		FUNC1(object->jiffies + jiffies_min_age,
			       jiffies_last_scan);
}