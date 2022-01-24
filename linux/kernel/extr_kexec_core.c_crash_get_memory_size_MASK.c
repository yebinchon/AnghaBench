#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ end; scalar_t__ start; } ;

/* Variables and functions */
 TYPE_1__ crashk_res ; 
 int /*<<< orphan*/  kexec_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (TYPE_1__*) ; 

size_t FUNC3(void)
{
	size_t size = 0;

	FUNC0(&kexec_mutex);
	if (crashk_res.end != crashk_res.start)
		size = FUNC2(&crashk_res);
	FUNC1(&kexec_mutex);
	return size;
}