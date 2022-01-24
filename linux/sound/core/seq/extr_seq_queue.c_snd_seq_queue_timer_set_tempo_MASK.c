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
struct snd_seq_queue_tempo {scalar_t__ skew_base; int /*<<< orphan*/  skew_value; int /*<<< orphan*/  ppq; int /*<<< orphan*/  tempo; } ;
struct snd_seq_queue {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_seq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_queue*) ; 
 struct snd_seq_queue* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(int queueid, int client,
				  struct snd_seq_queue_tempo *info)
{
	struct snd_seq_queue *q = FUNC3(queueid);
	int result;

	if (q == NULL)
		return -EINVAL;
	if (! FUNC0(q, client)) {
		FUNC2(q);
		return -EPERM;
	}

	result = FUNC5(q->timer, info->tempo, info->ppq);
	if (result >= 0 && info->skew_base > 0)
		result = FUNC4(q->timer, info->skew_value,
						info->skew_base);
	FUNC1(q);
	FUNC2(q);
	return result;
}