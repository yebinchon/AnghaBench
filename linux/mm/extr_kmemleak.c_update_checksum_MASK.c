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
typedef  scalar_t__ u32 ;
struct kmemleak_object {scalar_t__ checksum; int /*<<< orphan*/  size; scalar_t__ pointer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static bool FUNC3(struct kmemleak_object *object)
{
	u32 old_csum = object->checksum;

	FUNC1();
	object->checksum = FUNC0(0, (void *)object->pointer, object->size);
	FUNC2();

	return object->checksum != old_csum;
}