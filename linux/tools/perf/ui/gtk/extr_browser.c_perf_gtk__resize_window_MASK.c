#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int width; int height; } ;
struct TYPE_7__ {int /*<<< orphan*/  window; } ;
typedef  TYPE_1__ GtkWidget ;
typedef  int /*<<< orphan*/  GdkScreen ;
typedef  TYPE_2__ GdkRectangle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

void FUNC5(GtkWidget *window)
{
	GdkRectangle rect;
	GdkScreen *screen;
	int monitor;
	int height;
	int width;

	screen = FUNC3(window);

	monitor = FUNC1(screen, window->window);

	FUNC2(screen, monitor, &rect);

	width	= rect.width * 3 / 4;
	height	= rect.height * 3 / 4;

	FUNC4(FUNC0(window), width, height);
}