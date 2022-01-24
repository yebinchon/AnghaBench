#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_seq_client_pool {scalar_t__ client; int output_pool; int input_pool; int output_room; } ;
struct TYPE_6__ {int fifo_pool_size; int /*<<< orphan*/ * fifo; } ;
struct TYPE_7__ {TYPE_1__ user; } ;
struct snd_seq_client {scalar_t__ number; scalar_t__ type; TYPE_3__* pool; TYPE_2__ data; } ;
struct TYPE_8__ {int size; int room; int /*<<< orphan*/  counter; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int SNDRV_SEQ_MAX_CLIENT_EVENTS ; 
 int SNDRV_SEQ_MAX_EVENTS ; 
 scalar_t__ USER_CLIENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct snd_seq_client*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (struct snd_seq_client*) ; 

__attribute__((used)) static int FUNC7(struct snd_seq_client *client,
					 void *arg)
{
	struct snd_seq_client_pool *info = arg;
	int rc;

	if (client->number != info->client)
		return -EINVAL; /* can't change other clients */

	if (info->output_pool >= 1 && info->output_pool <= SNDRV_SEQ_MAX_EVENTS &&
	    (! FUNC6(client) ||
	     info->output_pool != client->pool->size)) {
		if (FUNC6(client)) {
			/* is the pool in use? */
			if (FUNC0(&client->pool->counter))
				return -EBUSY;
			/* remove all existing cells */
			FUNC5(client->pool);
			FUNC3(client->pool);
		}
		client->pool->size = info->output_pool;
		rc = FUNC4(client->pool);
		if (rc < 0)
			return rc;
	}
	if (client->type == USER_CLIENT && client->data.user.fifo != NULL &&
	    info->input_pool >= 1 &&
	    info->input_pool <= SNDRV_SEQ_MAX_CLIENT_EVENTS &&
	    info->input_pool != client->data.user.fifo_pool_size) {
		/* change pool size */
		rc = FUNC1(client->data.user.fifo, info->input_pool);
		if (rc < 0)
			return rc;
		client->data.user.fifo_pool_size = info->input_pool;
	}
	if (info->output_room >= 1 &&
	    info->output_room <= client->pool->size) {
		client->pool->room  = info->output_room;
	}

	return FUNC2(client, arg);
}