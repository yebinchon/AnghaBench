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
struct vm_area_struct {int dummy; } ;
struct rb_node {int dummy; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,struct rb_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,struct vm_area_struct*,struct rb_node**,struct rb_node*) ; 

__attribute__((used)) static void
FUNC2(struct mm_struct *mm, struct vm_area_struct *vma,
	struct vm_area_struct *prev, struct rb_node **rb_link,
	struct rb_node *rb_parent)
{
	FUNC0(mm, vma, prev, rb_parent);
	FUNC1(mm, vma, rb_link, rb_parent);
}