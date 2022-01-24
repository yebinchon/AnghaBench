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
struct module {int dummy; } ;
struct bpf_raw_event_map {int dummy; } ;

/* Variables and functions */
 struct module* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct module*) ; 

void FUNC2(struct bpf_raw_event_map *btp)
{
	struct module *mod = FUNC0((unsigned long)btp);

	if (mod)
		FUNC1(mod);
}