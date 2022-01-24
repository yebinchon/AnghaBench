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
struct wm_coeff_ctl {struct wm_coeff_ctl* name; struct wm_coeff_ctl* cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wm_coeff_ctl*) ; 

__attribute__((used)) static void FUNC1(struct wm_coeff_ctl *ctl)
{
	FUNC0(ctl->cache);
	FUNC0(ctl->name);
	FUNC0(ctl);
}