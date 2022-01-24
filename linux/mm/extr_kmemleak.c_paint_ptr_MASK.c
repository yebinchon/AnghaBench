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
struct kmemleak_object {int dummy; } ;

/* Variables and functions */
 int KMEMLEAK_BLACK ; 
 int KMEMLEAK_GREY ; 
 struct kmemleak_object* FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct kmemleak_object*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kmemleak_object*) ; 

__attribute__((used)) static void FUNC4(unsigned long ptr, int color)
{
	struct kmemleak_object *object;

	object = FUNC0(ptr, 0);
	if (!object) {
		FUNC1("Trying to color unknown object at 0x%08lx as %s\n",
			      ptr,
			      (color == KMEMLEAK_GREY) ? "Grey" :
			      (color == KMEMLEAK_BLACK) ? "Black" : "Unknown");
		return;
	}
	FUNC2(object, color);
	FUNC3(object);
}