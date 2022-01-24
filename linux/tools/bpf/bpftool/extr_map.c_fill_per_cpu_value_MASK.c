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
struct bpf_map_info {int /*<<< orphan*/  value_size; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct bpf_map_info *info, void *value)
{
	unsigned int i, n, step;

	if (!FUNC1(info->type))
		return;

	n = FUNC0();
	step = FUNC3(info->value_size, 8);
	for (i = 1; i < n; i++)
		FUNC2(value + i * step, value, info->value_size);
}