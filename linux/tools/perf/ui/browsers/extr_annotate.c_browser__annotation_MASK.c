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
struct ui_browser {struct map_symbol* priv; } ;
struct map_symbol {int /*<<< orphan*/  sym; } ;
struct annotation {int dummy; } ;

/* Variables and functions */
 struct annotation* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct annotation *FUNC1(struct ui_browser *browser)
{
	struct map_symbol *ms = browser->priv;
	return FUNC0(ms->sym);
}