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
struct padata_instance {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_possible_mask ; 
 struct padata_instance* FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct padata_instance *FUNC1(const char *name)
{
	return FUNC0(name, cpu_possible_mask, cpu_possible_mask);
}