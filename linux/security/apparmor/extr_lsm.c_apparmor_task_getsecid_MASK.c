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
typedef  int /*<<< orphan*/  u32 ;
struct task_struct {int dummy; } ;
struct aa_label {int /*<<< orphan*/  secid; } ;

/* Variables and functions */
 struct aa_label* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct aa_label*) ; 

__attribute__((used)) static void FUNC2(struct task_struct *p, u32 *secid)
{
	struct aa_label *label = FUNC0(p);
	*secid = label->secid;
	FUNC1(label);
}