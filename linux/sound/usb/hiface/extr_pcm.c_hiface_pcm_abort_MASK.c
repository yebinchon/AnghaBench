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
struct pcm_runtime {int panic; int /*<<< orphan*/  stream_mutex; } ;
struct hiface_chip {struct pcm_runtime* pcm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct hiface_chip *chip)
{
	struct pcm_runtime *rt = chip->pcm;

	if (rt) {
		rt->panic = true;

		FUNC1(&rt->stream_mutex);
		FUNC0(rt);
		FUNC2(&rt->stream_mutex);
	}
}