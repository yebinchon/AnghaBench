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
struct ocfs2_dx_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_dx_entry,struct ocfs2_dx_entry) ; 

__attribute__((used)) static void FUNC2(void *a, void *b, int size)
{
	struct ocfs2_dx_entry *entry1 = a;
	struct ocfs2_dx_entry *entry2 = b;

	FUNC0(size != sizeof(*entry1));

	FUNC1(*entry1, *entry2);
}