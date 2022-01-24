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
struct snd_opl3 {int dummy; } ;

/* Variables and functions */
 scalar_t__ SNDRV_SEQ_CLIENT_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (struct snd_opl3*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_opl3*) ; 

__attribute__((used)) static int FUNC2(void *private_data, struct snd_seq_port_subscribe * info)
{
	struct snd_opl3 *opl3 = private_data;

	FUNC0(opl3);

	if (info->sender.client != SNDRV_SEQ_CLIENT_SYSTEM)
		FUNC1(opl3);
	return 0;
}