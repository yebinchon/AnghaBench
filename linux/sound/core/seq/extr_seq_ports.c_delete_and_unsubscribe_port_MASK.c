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
struct list_head {int dummy; } ;
struct snd_seq_subscribers {int /*<<< orphan*/  info; struct list_head dest_list; struct list_head src_list; } ;
struct snd_seq_port_subs_info {int /*<<< orphan*/  list_mutex; int /*<<< orphan*/  list_lock; scalar_t__ exclusive; } ;
struct snd_seq_client_port {struct snd_seq_port_subs_info c_dest; struct snd_seq_port_subs_info c_src; } ;
struct snd_seq_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_seq_client*,struct snd_seq_client_port*,struct snd_seq_port_subs_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct snd_seq_client *client,
					struct snd_seq_client_port *port,
					struct snd_seq_subscribers *subs,
					bool is_src, bool ack)
{
	struct snd_seq_port_subs_info *grp;
	struct list_head *list;
	bool empty;

	grp = is_src ? &port->c_src : &port->c_dest;
	list = is_src ? &subs->src_list : &subs->dest_list;
	FUNC0(&grp->list_mutex);
	FUNC5(&grp->list_lock);
	empty = FUNC2(list);
	if (!empty)
		FUNC1(list);
	grp->exclusive = 0;
	FUNC6(&grp->list_lock);

	if (!empty)
		FUNC3(client, port, grp, &subs->info, ack);
	FUNC4(&grp->list_mutex);
}