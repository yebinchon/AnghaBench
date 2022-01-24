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
struct snd_seq_queue_client {scalar_t__ used; int /*<<< orphan*/  queue; } ;
struct snd_seq_client {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int FUNC0 (struct snd_seq_client*,void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct snd_seq_client *client,
					  void *arg)
{
	struct snd_seq_queue_client *info = arg;
	int err;

	if (info->used >= 0) {
		err = FUNC1(info->queue, client->number, info->used);
		if (err < 0)
			return err;
	}

	return FUNC0(client, arg);
}