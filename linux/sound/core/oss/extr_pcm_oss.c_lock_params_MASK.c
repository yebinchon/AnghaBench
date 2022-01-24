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
struct TYPE_2__ {int /*<<< orphan*/  params_lock; int /*<<< orphan*/  rw_ref; } ;
struct snd_pcm_runtime {TYPE_1__ oss; } ;

/* Variables and functions */
 int EBUSY ; 
 int ERESTARTSYS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_runtime *runtime)
{
	if (FUNC1(&runtime->oss.params_lock))
		return -ERESTARTSYS;
	if (FUNC0(&runtime->oss.rw_ref)) {
		FUNC2(&runtime->oss.params_lock);
		return -EBUSY;
	}
	return 0;
}