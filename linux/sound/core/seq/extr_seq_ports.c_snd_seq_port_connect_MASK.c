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
struct snd_seq_port_subscribe {int flags; } ;
struct snd_seq_subscribers {int /*<<< orphan*/  dest_list; int /*<<< orphan*/  src_list; int /*<<< orphan*/  ref_count; struct snd_seq_port_subscribe info; } ;
struct snd_seq_client_port {int dummy; } ;
struct snd_seq_client {scalar_t__ number; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SNDRV_SEQ_PORT_SUBS_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_seq_client*,struct snd_seq_client_port*,struct snd_seq_subscribers*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_seq_client*,struct snd_seq_client_port*,struct snd_seq_subscribers*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_seq_subscribers*) ; 
 struct snd_seq_subscribers* FUNC5 (int,int /*<<< orphan*/ ) ; 

int FUNC6(struct snd_seq_client *connector,
			 struct snd_seq_client *src_client,
			 struct snd_seq_client_port *src_port,
			 struct snd_seq_client *dest_client,
			 struct snd_seq_client_port *dest_port,
			 struct snd_seq_port_subscribe *info)
{
	struct snd_seq_subscribers *subs;
	bool exclusive;
	int err;

	subs = FUNC5(sizeof(*subs), GFP_KERNEL);
	if (!subs)
		return -ENOMEM;

	subs->info = *info;
	FUNC1(&subs->ref_count, 0);
	FUNC0(&subs->src_list);
	FUNC0(&subs->dest_list);

	exclusive = !!(info->flags & SNDRV_SEQ_PORT_SUBS_EXCLUSIVE);

	err = FUNC2(src_client, src_port, subs, true,
				       exclusive,
				       connector->number != src_client->number);
	if (err < 0)
		goto error;
	err = FUNC2(dest_client, dest_port, subs, false,
				       exclusive,
				       connector->number != dest_client->number);
	if (err < 0)
		goto error_dest;

	return 0;

 error_dest:
	FUNC3(src_client, src_port, subs, true,
				    connector->number != src_client->number);
 error:
	FUNC4(subs);
	return err;
}