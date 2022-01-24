#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_seq_client_pool {scalar_t__ input_free; scalar_t__ input_pool; int /*<<< orphan*/  output_free; int /*<<< orphan*/  output_pool; int /*<<< orphan*/  output_room; int /*<<< orphan*/  client; } ;
struct TYPE_4__ {int /*<<< orphan*/  fifo; scalar_t__ fifo_pool_size; } ;
struct TYPE_5__ {TYPE_1__ user; } ;
struct snd_seq_client {scalar_t__ type; TYPE_2__ data; TYPE_3__* pool; int /*<<< orphan*/  number; } ;
struct TYPE_6__ {int /*<<< orphan*/  room; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ USER_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_client_pool*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_seq_client*) ; 
 struct snd_seq_client* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(struct snd_seq_client *client,
					 void *arg)
{
	struct snd_seq_client_pool *info = arg;
	struct snd_seq_client *cptr;

	cptr = FUNC2(info->client);
	if (cptr == NULL)
		return -ENOENT;
	FUNC0(info, 0, sizeof(*info));
	info->client = cptr->number;
	info->output_pool = cptr->pool->size;
	info->output_room = cptr->pool->room;
	info->output_free = info->output_pool;
	info->output_free = FUNC4(cptr->pool);
	if (cptr->type == USER_CLIENT) {
		info->input_pool = cptr->data.user.fifo_pool_size;
		info->input_free = info->input_pool;
		info->input_free = FUNC3(cptr->data.user.fifo);
	} else {
		info->input_pool = 0;
		info->input_free = 0;
	}
	FUNC1(cptr);
	
	return 0;
}