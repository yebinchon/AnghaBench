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
struct snd_rme9652 {scalar_t__ playback_pid; scalar_t__ capture_pid; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC2(struct snd_rme9652 *rme9652)
{
	unsigned long flags;
	int ret = 1;

	FUNC0(&rme9652->lock, flags);
	if ((rme9652->playback_pid != rme9652->capture_pid) &&
	    (rme9652->playback_pid >= 0) && (rme9652->capture_pid >= 0)) {
		ret = 0;
	}
	FUNC1(&rme9652->lock, flags);
	return ret;
}