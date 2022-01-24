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
struct ocfs2_xattr_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocfs2_xattr_entry*,struct ocfs2_xattr_entry*,int) ; 

__attribute__((used)) static void FUNC1(void *a, void *b, int size)
{
	struct ocfs2_xattr_entry *l = a, *r = b, tmp;

	tmp = *l;
	FUNC0(l, r, sizeof(struct ocfs2_xattr_entry));
	FUNC0(r, &tmp, sizeof(struct ocfs2_xattr_entry));
}