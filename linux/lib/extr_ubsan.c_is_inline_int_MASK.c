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
struct type_descriptor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (struct type_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (struct type_descriptor*) ; 

__attribute__((used)) static bool FUNC3(struct type_descriptor *type)
{
	unsigned inline_bits = sizeof(unsigned long)*8;
	unsigned bits = FUNC1(type);

	FUNC0(!FUNC2(type));

	return bits <= inline_bits;
}