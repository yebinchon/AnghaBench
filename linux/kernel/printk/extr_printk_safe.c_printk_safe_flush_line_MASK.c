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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char const*) ; 

__attribute__((used)) static inline void FUNC1(const char *text, int len)
{
	/*
	 * Avoid any console drivers calls from here, because we may be
	 * in NMI or printk_safe context (when in panic). The messages
	 * must go only into the ring buffer at this stage.  Consoles will
	 * get explicitly called later when a crashdump is not generated.
	 */
	FUNC0("%.*s", len, text);
}