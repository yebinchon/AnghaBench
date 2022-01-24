#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gfs2_bufdata {int /*<<< orphan*/  bd_bh; TYPE_1__* bd_gl; int /*<<< orphan*/  bd_ail_gl_list; int /*<<< orphan*/  bd_ail_st_list; int /*<<< orphan*/ * bd_tr; } ;
struct TYPE_2__ {int /*<<< orphan*/  gl_ail_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct gfs2_bufdata *bd)
{
	bd->bd_tr = NULL;
	FUNC2(&bd->bd_ail_st_list);
	FUNC2(&bd->bd_ail_gl_list);
	FUNC0(&bd->bd_gl->gl_ail_count);
	FUNC1(bd->bd_bh);
}