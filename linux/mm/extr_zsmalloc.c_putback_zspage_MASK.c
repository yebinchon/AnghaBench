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
struct zspage {int dummy; } ;
struct size_class {int /*<<< orphan*/  index; } ;
typedef  enum fullness_group { ____Placeholder_fullness_group } fullness_group ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct size_class*,struct zspage*) ; 
 int /*<<< orphan*/  FUNC2 (struct size_class*,struct zspage*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct zspage*) ; 
 int /*<<< orphan*/  FUNC4 (struct zspage*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum fullness_group FUNC5(struct size_class *class,
			struct zspage *zspage)
{
	enum fullness_group fullness;

	FUNC0(FUNC3(zspage));

	fullness = FUNC1(class, zspage);
	FUNC2(class, zspage, fullness);
	FUNC4(zspage, class->index, fullness);

	return fullness;
}