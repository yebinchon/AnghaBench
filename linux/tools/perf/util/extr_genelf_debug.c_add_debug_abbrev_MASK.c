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
struct buffer_ext {int dummy; } ;

/* Variables and functions */
 int DW_AT_stmt_list ; 
 int DW_CHILDREN_yes ; 
 int DW_FORM_data4 ; 
 int DW_TAG_compile_unit ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_ext*,int) ; 

__attribute__((used)) static void
FUNC1(struct buffer_ext *be)
{
        FUNC0(be, 1);
        FUNC0(be, DW_TAG_compile_unit);
        FUNC0(be, DW_CHILDREN_yes);
        FUNC0(be, DW_AT_stmt_list);
        FUNC0(be, DW_FORM_data4);
        FUNC0(be, 0);
        FUNC0(be, 0);
        FUNC0(be, 0);
}