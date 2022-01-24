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
struct TYPE_2__ {int /*<<< orphan*/  port; int /*<<< orphan*/  client; } ;
struct snd_seq_port_subscribe {int /*<<< orphan*/  dest; TYPE_1__ sender; } ;
struct snd_seq_client_port {int /*<<< orphan*/  c_src; } ;
struct snd_seq_client {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_client*) ; 
 struct snd_seq_client* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct snd_seq_port_subscribe*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_seq_client_port*) ; 
 struct snd_seq_client_port* FUNC4 (struct snd_seq_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_seq_client *client,
					  void *arg)
{
	struct snd_seq_port_subscribe *subs = arg;
	int result;
	struct snd_seq_client *sender = NULL;
	struct snd_seq_client_port *sport = NULL;

	result = -EINVAL;
	if ((sender = FUNC1(subs->sender.client)) == NULL)
		goto __end;
	if ((sport = FUNC4(sender, subs->sender.port)) == NULL)
		goto __end;
	result = FUNC2(&sport->c_src, &subs->dest,
					       subs);
      __end:
      	if (sport)
		FUNC3(sport);
	if (sender)
		FUNC0(sender);

	return result;
}