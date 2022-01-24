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
struct TYPE_2__ {scalar_t__ client; } ;
struct snd_seq_port_subscribe {TYPE_1__ sender; } ;
struct snd_opl4 {int /*<<< orphan*/  access_mutex; int /*<<< orphan*/  used; } ;

/* Variables and functions */
 scalar_t__ SNDRV_SEQ_CLIENT_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_opl4*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_opl4*) ; 

__attribute__((used)) static int FUNC4(void *private_data, struct snd_seq_port_subscribe *info)
{
	struct snd_opl4 *opl4 = private_data;

	FUNC3(opl4);

	FUNC0(&opl4->access_mutex);
	opl4->used--;
	FUNC1(&opl4->access_mutex);

	if (info->sender.client != SNDRV_SEQ_CLIENT_SYSTEM)
		FUNC2(opl4);
	return 0;
}