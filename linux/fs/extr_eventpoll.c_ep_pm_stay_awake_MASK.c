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
struct wakeup_source {int dummy; } ;
struct epitem {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wakeup_source*) ; 
 struct wakeup_source* FUNC1 (struct epitem*) ; 

__attribute__((used)) static inline void FUNC2(struct epitem *epi)
{
	struct wakeup_source *ws = FUNC1(epi);

	if (ws)
		FUNC0(ws);
}