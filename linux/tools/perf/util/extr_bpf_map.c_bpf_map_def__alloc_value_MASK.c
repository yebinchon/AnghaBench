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
struct bpf_map_def {int value_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_NPROCESSORS_CONF ; 
 scalar_t__ FUNC0 (struct bpf_map_def const*) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC4(const struct bpf_map_def *def)
{
	if (FUNC0(def))
		return FUNC1(FUNC2(def->value_size, 8) * FUNC3(_SC_NPROCESSORS_CONF));

	return FUNC1(def->value_size);
}