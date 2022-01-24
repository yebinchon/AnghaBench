#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct key_vector {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  full_children; int /*<<< orphan*/  empty_children; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct key_vector*) ; 

__attribute__((used)) static inline void FUNC1(struct key_vector *n)
{
	FUNC0(n)->empty_children++;

	if (!FUNC0(n)->empty_children)
		FUNC0(n)->full_children++;
}