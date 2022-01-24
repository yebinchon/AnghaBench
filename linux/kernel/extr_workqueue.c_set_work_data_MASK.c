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
struct work_struct {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct work_struct*) ; 
 unsigned long FUNC3 (struct work_struct*) ; 

__attribute__((used)) static inline void FUNC4(struct work_struct *work, unsigned long data,
				 unsigned long flags)
{
	FUNC0(!FUNC2(work));
	FUNC1(&work->data, data | flags | FUNC3(work));
}