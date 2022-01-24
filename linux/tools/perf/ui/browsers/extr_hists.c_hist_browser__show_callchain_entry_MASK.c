#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int width; } ;
struct hist_browser {TYPE_2__ b; TYPE_1__* selection; scalar_t__ show_dso; } ;
struct callchain_print_arg {int is_current_entry; } ;
struct TYPE_9__ {scalar_t__ sym; } ;
struct callchain_list {TYPE_1__ ms; } ;
struct TYPE_11__ {scalar_t__ src; } ;

/* Variables and functions */
 int HE_COLORSET_NORMAL ; 
 int HE_COLORSET_SELECTED ; 
 char SLSMG_RARROW_CHAR ; 
 char FUNC0 (struct callchain_list*) ; 
 TYPE_8__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,unsigned short,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char const*,int) ; 

__attribute__((used)) static void FUNC8(struct hist_browser *browser,
					       struct callchain_list *chain,
					       const char *str, int offset,
					       unsigned short row,
					       struct callchain_print_arg *arg)
{
	int color, width;
	char folded_sign = FUNC0(chain);
	bool show_annotated = browser->show_dso && chain->ms.sym && FUNC1(chain->ms.sym)->src;

	color = HE_COLORSET_NORMAL;
	width = browser->b.width - (offset + 2);
	if (FUNC3(&browser->b, row)) {
		browser->selection = &chain->ms;
		color = HE_COLORSET_SELECTED;
		arg->is_current_entry = true;
	}

	FUNC5(&browser->b, color);
	FUNC2(&browser->b, row, 0);
	FUNC7(&browser->b, " ", offset);
	FUNC4(&browser->b, "%c", folded_sign);
	FUNC6(&browser->b, show_annotated ? SLSMG_RARROW_CHAR : ' ');
	FUNC7(&browser->b, str, width);
}